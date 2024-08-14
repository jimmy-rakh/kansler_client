import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'last_viewed_state.dart';
part 'last_viewed_event.dart';
part 'last_viewed_bloc.freezed.dart';

@injectable
class LastViewedBloc extends Bloc<LastViewedEvent,LastViewedState>{
  LastViewedBloc() : super(const LastViewedState.loadInProgress()){

  }
}
