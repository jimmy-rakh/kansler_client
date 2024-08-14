import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../app/router.dart';
import '../../../../core/constants/app_illustrations.dart';
import '../../../../core/constants/spaces.dart';
import '../../../../core/widgets/permission_dialog.dart';

@RoutePage()
class ScannerScreen extends StatefulWidget {
  const ScannerScreen({super.key});

  @override
  State<ScannerScreen> createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen>
    with WidgetsBindingObserver {
  final MobileScannerController controller = MobileScannerController(
    autoStart: false,
    torchEnabled: false,
    useNewCameraSelector: true,
  );

  Barcode? _barcode;
  StreamSubscription<Object?>? _subscription;

  Widget _buildBarcode(Barcode? value) {
    if (value == null) {
      return const Text(
        'Отсканируйте штрихкод',
        overflow: TextOverflow.fade,
        style: TextStyle(color: Colors.white),
      );
    }

    return Column(
      children: [
        Text(
          value.displayValue ?? 'No display value.',
          overflow: TextOverflow.fade,
          style: const TextStyle(color: Colors.white),
        ),
        verticalSpace12,
        // AppButton(
        //   text: 'Подтвердить',
        //   fillColor: context.primary,
        //   onPressed: () => Navigator.pop(context, value.displayValue),
        //   padding: const EdgeInsets.symmetric(vertical: 12),
        //   borderRadius: 12,
        //   margin: const EdgeInsets.symmetric(horizontal: 24),
        // )
      ],
    );
  }

  void _handleBarcode(BarcodeCapture barcodes) {
    if (_barcode != null) return;
    if (mounted) {
      setState(() {
        _barcode = barcodes.barcodes.firstOrNull;
      });
    }

    Navigator.pop(context, _barcode?.displayValue);
  }

  @override
  void initState() {
    super.initState();

    handlePermission();

    WidgetsBinding.instance.addObserver(this);
  }

  void handlePermission() async {
    await Future.delayed(Durations.extralong4);

    print(await Permission.camera.status);

    final status = await Permission.camera.request();

    if (status == PermissionStatus.granted) {
      _subscription = controller.barcodes.listen(_handleBarcode);

      unawaited(controller.start());
      return;
    }

    final res = await router.navigatorKey.currentContext!.showCustomDialog(
          const PermissionDialog(
            image: AppIllustrations.camera,
            title: 'Нет доступа к камере',
            description:
                'Предоставьте доступ к камере, чтобы\nотсканировать штрихкод',
            grantText: 'Настройки',
          ),
        ) ??
        false;

    if (!res) {
      router.back();
      return;
    }

    if (res) {
      openAppSettings();
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (!controller.value.isInitialized) {
      return;
    }

    switch (state) {
      case AppLifecycleState.detached:
      case AppLifecycleState.hidden:
      case AppLifecycleState.paused:
        return;
      case AppLifecycleState.resumed:
        _subscription = controller.barcodes.listen(_handleBarcode);

        unawaited(controller.start());
      case AppLifecycleState.inactive:
        unawaited(_subscription?.cancel());
        _subscription = null;
        unawaited(controller.stop());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Сканнер'),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          MobileScanner(
            controller: controller,
            errorBuilder: (context, error, child) {
              return const SizedBox();
            },
            fit: BoxFit.contain,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              alignment: Alignment.bottomCenter,
              height: 100,
              color: Colors.black.withOpacity(0.4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // ToggleFlashlightButton(controller: controller),
                  // StartStopMobileScannerButton(controller: controller),
                  Expanded(child: Center(child: _buildBarcode(_barcode))),
                  // SwitchCameraButton(controller: controller),
                  // AnalyzeImageFromGalleryButton(controller: controller),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Future<void> dispose() async {
    WidgetsBinding.instance.removeObserver(this);
    // unawaited(_subscription?.cancel());
    _subscription = null;
    super.dispose();
    await controller.dispose();
  }
}
