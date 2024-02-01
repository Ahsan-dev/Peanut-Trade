import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:peanut_trade/data/models/user_account.dart';

import '../../core/constants.dart';
import '../table_constants.dart';

Future<void> initStorage() async {
  await Hive.initFlutter();
  await initHiveAdapters();
  await Hive.openBox(Constants.TOKEN_BOX_KEY);
}

Future<void> initHiveAdapters() async {
  Hive.registerAdapter(UserAccountAdapter());
  await Hive.openBox<UserAccount>(TableConstants.userTableName);
}