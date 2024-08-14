import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../app/router.dart';
import '../../../../../auth/presentation/screens/auth/bloc/auth_bloc.dart';
import '../../../../domain/entities/company.entity.dart';
import '../../../../domain/repositories/profile.repository.dart';

part 'companies_state.dart';
part 'companies_event.dart';
part 'companies_bloc.freezed.dart';

@lazySingleton
class CompaniesBloc extends Bloc<CompaniesEvent, CompaniesState> {
  final ProfileRepository _profileRepository;

  CompaniesBloc(this._profileRepository)
      : super(const CompaniesState.loadInProgress()) {
    on<_FetchCompanies>(_onFetch);

    add(const CompaniesEvent.fetchCompanies());
  }

  void _onFetch(_FetchCompanies event, Emitter<CompaniesState> emit) async {
    final authBloc =
        BlocProvider.of<AuthBloc>(router.navigatorKey.currentContext!);

    if (authBloc.state != const AuthState.authenticated()) return;

    final res = await _profileRepository.getChildren();

    res.fold((l) => null, (r) => emit(CompaniesState.ready(r.companies)));
  }
}
