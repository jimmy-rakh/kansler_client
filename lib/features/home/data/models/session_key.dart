import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_key.freezed.dart';

part 'session_key.g.dart';

@freezed
class SessionKey with _$SessionKey {
  factory SessionKey({
    String? sessionKey,
  }) = _SessionKey;

  factory SessionKey.fromJson(Map<String, dynamic> json) =>
      _$SessionKeyFromJson(json);
}
