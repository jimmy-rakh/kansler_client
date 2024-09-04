import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kansler/app/router.dart';
import 'package:kansler/core/constants/spaces.dart';
import 'package:kansler/core/extensions/extensions.dart';
import 'package:kansler/core/widgets/app_card.dart';
import 'package:kansler/core/widgets/widgets.dart';
import 'package:kansler/features/auth/data/models/register/address_request.dart';

@RoutePage()
class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  AddressRequest _address = AddressRequest(
    name: '',
    latitude: '41.2995',
    longitude: '69.2401',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        centerTitle: true,
        preferredSize: Size.fromHeight(60),
        child: Text('Выберите адрес'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                GoogleMap(
                  mapType: MapType.normal,
                  compassEnabled: false,
                  zoomControlsEnabled: false,
                  myLocationEnabled: true,
                  onCameraMove: _onMove,
                  onMapCreated: _createMap,
                  initialCameraPosition: const CameraPosition(
                    target: LatLng(41.2995, 69.2401),
                    zoom: 15,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.my_location_rounded,
                    color: context.primary,
                  ),
                ),
              ],
            ),
          ),
          AppCard(
            padding: const EdgeInsets.all(16),
            width: context.width,
            items: [
              AppTextField(
                radius: 0,
                floatingLabelStyle: context.bodyLarge,
                label: 'Наименование адреса',
                fillColor: context.background,
                onChange: _onNameChanged,
                hintStyle: context.bodyLarge!.copyWith(
                  color: context.colorScheme.inverseSurface,
                ),
              ),
              verticalSpace12,
              Row(
                children: [
                  Expanded(
                    child: AppButton(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      text: 'Отменить',
                      onPressed: () => router.maybePop(),
                      fillColor: context.background,
                    ),
                  ),
                  horizontalSpace12,
                  Expanded(
                    child: AppButton(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      text: 'Сохранить',
                      isActive: _address.name.length >= 2,
                      fillColor: context.primary,
                      onPressed: () => router.maybePop(_address),
                    ),
                  ),
                ],
              ),
              verticalSpace12,
            ],
          ),
        ],
      ),
    );
  }

  void _createMap(GoogleMapController controller) {}

  void _onMove(CameraPosition info) async {
    LatLng center = info.target;

    _address = _address.copyWith(
      latitude: center.latitude.toString(),
      longitude: center.longitude.toString(),
    );
  }

  void _onNameChanged(String v) {
    _address = _address.copyWith(name: v);
    setState(() {});
  }
}
