import 'package:flutter/cupertino.dart';

import 'data/local_storage/init_storage.dart';

Future<void> initAppDependencies() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initStorage();
}
