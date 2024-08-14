import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'templates_state.dart';
part 'templates_event.dart';
part 'templates_bloc.freezed.dart';

@injectable
class TemplatesBloc extends Bloc<TemplatesEvent, TemplatesState> {
  TemplatesBloc() : super(const TemplatesState.loadInProgress()) {}
}
