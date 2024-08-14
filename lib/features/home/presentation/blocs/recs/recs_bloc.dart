import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'recs_state.dart';
part 'recs_event.dart';
part 'recs_bloc.freezed.dart';

@injectable
class RecsBloc extends Bloc<RecsEvent,RecsState>{
  RecsBloc() : super(const RecsState.loadInProgress()){

  }
}
