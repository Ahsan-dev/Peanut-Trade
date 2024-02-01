import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../size_config.dart';


SnackbarController showSnackbarAlert(String title, {String? msg, Widget? icon, Widget? child, Duration? duration, SnackPosition? snackPosition, Color? backgroundColor, Color? leftBarIndicatorColor}) {
  return Get.snackbar(
    title,
    msg ?? "",
    icon: icon,
    titleText: child,
    snackPosition: snackPosition ?? SnackPosition.BOTTOM,
    duration: duration ?? const Duration(seconds: 3),
    margin: const EdgeInsets.symmetric(vertical: 75, horizontal: 20),
    backgroundColor: backgroundColor,
    leftBarIndicatorColor: leftBarIndicatorColor,
  );
}

SnackbarController showSnackbarAlertPlain(String title, {String? msg, Widget? icon, Widget? child, Duration? duration, SnackPosition? snackPosition, Color? backgroundColor, Color? contentColor, Color? leftBarIndicatorColor}) {
  return Get.showSnackbar(
    GetSnackBar(
      duration: const Duration(seconds: 1),
      mainButton: child,
      backgroundColor:backgroundColor?? Colors.black87,
      messageText: Text(
        title,
        style: TextStyle(color: contentColor??Colors.orange, fontSize: SizeConfig().font35(), fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
    )
  );
}
