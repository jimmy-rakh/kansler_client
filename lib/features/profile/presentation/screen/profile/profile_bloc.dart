import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../app/router.dart';
import '../../../../auth/presentation/screens/auth/bloc/auth_bloc.dart';
import '../../../domain/entities/company.entity.dart';
import '../../../domain/repositories/profile.repository.dart';

part 'profile_state.dart';
part 'profile_event.dart';
part 'profile_bloc.freezed.dart';

@lazySingleton
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository _repository;

  ProfileBloc(this._repository) : super(const ProfileState.initial()) {
    on<_GetCompany>(_onGetCompany);
    on<_SetInit>(_onSetInit);

    add(const ProfileEvent.getCompany());
  }

  void _onGetCompany(_GetCompany event, Emitter<ProfileState> emit) async {
    final authBloc =
        BlocProvider.of<AuthBloc>(router.navigatorKey.currentContext!);

    if (authBloc.state != const AuthState.authenticated()) return;
    emit(const ProfileState.loadInProgress());
    final res = await _repository.getCompany();

    res.fold((l) => null, (r) {
      emit(ProfileState.ready(r));
    });
  }

  void _onSetInit(_SetInit event, Emitter<ProfileState> emit) {
    emit(const ProfileState.initial());
  }
}
