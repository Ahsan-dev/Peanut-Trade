import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:peanut_trade/core/app_theme.dart';
import 'package:peanut_trade/init_project.dart';

import 'app/routes/app_pages.dart';

void main() {
  initAppWithDependencies();
}


void initAppWithDependencies() async{
  await initAppDependencies();
  await GetStorage.init();

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: AppTheme().colorScheme.primary,
      statusBarIconBrightness: Brightness.light,
      // statusBarBrightness: Brightness.dark,
    ),
  );
  runApp(
    GetMaterialApp(
      theme: AppTheme(),
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: getInitialRoute(),
      getPages: AppPages.routes,
    ),
  );

}

String getInitialRoute() {
  return Routes.SPLASH;
}
