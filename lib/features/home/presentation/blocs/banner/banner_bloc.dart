import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'banner_state.dart';
part 'banner_event.dart';
part 'banner_bloc.freezed.dart';

@injectable
class BannerBloc extends Bloc<BannerEvent,BannerState>{
  BannerBloc() : super(const BannerState.loadInProgress()){

  }
}
