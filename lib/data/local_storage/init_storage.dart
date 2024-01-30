import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

Future<void> initStorage() async {
  await Hive.initFlutter();
  // await initHiveAdapters();
}