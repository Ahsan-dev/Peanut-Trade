import 'package:hive/hive.dart';
import 'package:peanut_trade/data/table_constants.dart';

part 'user_account.g.dart';

@HiveType(typeId: TableConstants.userTableTypeId)
class UserAccount extends HiveObject {

  @HiveField(0)
  String? address;

  @HiveField(1)
  double? balance;

  @HiveField(2)
  String? city;

  @HiveField(3)
  String? country;

  @HiveField(4)
  int? currency;

  @HiveField(5)
  int? currentTradesCount;

  @HiveField(6)
  double? currentTradesVolume;

  @HiveField(7)
  double? equity;

  @HiveField(8)
  double? freeMargin;

  @HiveField(9)
  bool? isAnyOpenTrades;

  @HiveField(10)
  bool? isSwapFree;

  @HiveField(11)
  int? leverage;

  @HiveField(12)
  String? name;

  @HiveField(13)
  String? phone;

  @HiveField(14)
  int? totalTradesCount;

  @HiveField(15)
  double? totalTradesVolume;

  @HiveField(16)
  int? type;

  @HiveField(17)
  int? verificationLevel;

  @HiveField(18)
  String? zipCode;

  UserAccount(
    this.address,
    this.balance,
    this.city,
    this.country,
    this.currency,
    this.currentTradesCount,
    this.currentTradesVolume,
    this.equity,
    this.freeMargin,
    this.isAnyOpenTrades,
    this.isSwapFree,
    this.leverage,
    this.name,
    this.phone,
    this.totalTradesCount,
    this.totalTradesVolume,
    this.type,
    this.verificationLevel,
    this.zipCode
  );

  UserAccount.fromJson(Map<String, dynamic> json) {
    address = json["address"];
    balance = json["balance"];
    city = json["city"];
    country = json["country"];
    currency = json["currency"];
    currentTradesCount = json["currentTradesCount"];
    currentTradesVolume = json["currentTradesVolume"];
    equity = json["equity"];
    freeMargin = json["freeMargin"];
    isAnyOpenTrades = json["isAnyOpenTrades"];
    isSwapFree = json["isSwapFree"];
    leverage = json["leverage"];
    name = json["name"];
    phone = json["phone"];
    totalTradesCount = json["totalTradesCount"];
    totalTradesVolume = json["totalTradesVolume"];
    type = json["type"];
    verificationLevel = json["verificationLevel"];
    zipCode = json["zipCode"];
  }
}