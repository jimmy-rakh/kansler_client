import 'package:hive/hive.dart';

part 'auth_status.g.dart';

@HiveType(typeId: 0)
enum AuthStatus {
  @HiveField(0)
  unknown,
  @HiveField(1)
  authenticated,
  @HiveField(2)
  guest
}
