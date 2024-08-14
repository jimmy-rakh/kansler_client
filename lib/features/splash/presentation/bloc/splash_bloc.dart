import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../app/router.dart';

part 'splash_state.dart';
part 'splash_event.dart';
part 'splash_bloc.freezed.dart';

@singleton
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashState.loadInProgress()) {
    on<_Init>(_onInit);

    add(const SplashEvent.init());
  }

  void _onInit(_Init event, Emitter<SplashState> emit) {
    emit(const SplashState.ready());

    router.push(const MainRoute());
  }
}
