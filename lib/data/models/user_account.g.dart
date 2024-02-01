// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_account.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAccountAdapter extends TypeAdapter<UserAccount> {
  @override
  final int typeId = 0;

  @override
  UserAccount read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserAccount(
      fields[0] as String?,
      fields[1] as double?,
      fields[2] as String?,
      fields[3] as String?,
      fields[4] as int?,
      fields[5] as int?,
      fields[6] as double?,
      fields[7] as double?,
      fields[8] as double?,
      fields[9] as bool?,
      fields[10] as bool?,
      fields[11] as int?,
      fields[12] as String?,
      fields[13] as String?,
      fields[14] as int?,
      fields[15] as double?,
      fields[16] as int?,
      fields[17] as int?,
      fields[18] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, UserAccount obj) {
    writer
      ..writeByte(19)
      ..writeByte(0)
      ..write(obj.address)
      ..writeByte(1)
      ..write(obj.balance)
      ..writeByte(2)
      ..write(obj.city)
      ..writeByte(3)
      ..write(obj.country)
      ..writeByte(4)
      ..write(obj.currency)
      ..writeByte(5)
      ..write(obj.currentTradesCount)
      ..writeByte(6)
      ..write(obj.currentTradesVolume)
      ..writeByte(7)
      ..write(obj.equity)
      ..writeByte(8)
      ..write(obj.freeMargin)
      ..writeByte(9)
      ..write(obj.isAnyOpenTrades)
      ..writeByte(10)
      ..write(obj.isSwapFree)
      ..writeByte(11)
      ..write(obj.leverage)
      ..writeByte(12)
      ..write(obj.name)
      ..writeByte(13)
      ..write(obj.phone)
      ..writeByte(14)
      ..write(obj.totalTradesCount)
      ..writeByte(15)
      ..write(obj.totalTradesVolume)
      ..writeByte(16)
      ..write(obj.type)
      ..writeByte(17)
      ..write(obj.verificationLevel)
      ..writeByte(18)
      ..write(obj.zipCode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAccountAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
