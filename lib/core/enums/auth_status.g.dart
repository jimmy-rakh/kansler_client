// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_status.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AuthStatusAdapter extends TypeAdapter<AuthStatus> {
  @override
  final int typeId = 0;

  @override
  AuthStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return AuthStatus.unknown;
      case 1:
        return AuthStatus.authenticated;
      case 2:
        return AuthStatus.guest;
      default:
        return AuthStatus.unknown;
    }
  }

  @override
  void write(BinaryWriter writer, AuthStatus obj) {
    switch (obj) {
      case AuthStatus.unknown:
        writer.writeByte(0);
        break;
      case AuthStatus.authenticated:
        writer.writeByte(1);
        break;
      case AuthStatus.guest:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
