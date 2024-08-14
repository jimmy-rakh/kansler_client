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
    required List<MainContactEntity> mainContact,
    String? region,
    ManagerEntity? manager,
    bool? children,
  }) = _CompanyEntity;
}

@freezed
class MainContactEntity with _$MainContactEntity {
  const factory MainContactEntity({
    String? name,
    String? type,
    String? phone,
  }) = _MainContactEntity;
}

@freezed
class ManagerEntity with _$ManagerEntity {
  const factory ManagerEntity({
    String? name,
    String? fullName,
    String? phone,
  }) = _ManagerEntity;
}
