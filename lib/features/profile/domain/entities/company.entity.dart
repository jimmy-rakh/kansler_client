import 'package:freezed_annotation/freezed_annotation.dart';

part 'company.entity.freezed.dart';

@freezed
class CompanyEntity with _$CompanyEntity {
  const factory CompanyEntity({
    required int id,
    String? name,
    String? fullName,
    String? inn,
    List<String?>? phoneNumbers,
    String? companyType,
    ManagerEntity? manager,
  }) = _CompanyEntity;
}

@freezed
class ManagerEntity with _$ManagerEntity {
  const factory ManagerEntity({
    String? name,
    String? fullName,
    String? phone,
    String? image,
  }) = _ManagerEntity;
}
