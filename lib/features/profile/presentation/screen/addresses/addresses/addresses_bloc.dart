import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../data/models/address_dto.dart';
import '../../../../domain/repositories/profile.repository.dart';

part 'addresses_state.dart';
part 'addresses_event.dart';
part 'addresses_bloc.freezed.dart';

@injectable
class AddressesBloc extends Bloc<AddressesEvent, AddressesState> {
  final ProfileRepository _profileRepository;

  AddressesBloc(this._profileRepository)
      : super(const AddressesState.loadInProgress()) {
    on<_Fetch>(_onFetch);
  }

  void _onFetch(_Fetch event, Emitter<AddressesState> emit) async {
    final res = await _profileRepository.getAddress(event.companyId);

    res.fold((l) => emit(const AddressesState.notFound()),
        (r) => emit(AddressesState.ready(r.addresses)));
    // emit(AddressesState.ready(addresses));
  }
}
