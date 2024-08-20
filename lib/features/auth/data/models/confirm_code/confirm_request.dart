// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirm_request.freezed.dart';
part 'confirm_request.g.dart';

@Freezed(toJson: true, fromJson: false)
class ConfirmRequest with _$ConfirmRequest {
  factory ConfirmRequest({
    required String value,
    required bool usePassword,
    @JsonKey(includeToJson: false) required String requestId,
  }) = _ConfirmRequest;
}
