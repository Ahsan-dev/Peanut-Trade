import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:peanut_trade/core/constants.dart';

import '../../../data/local_storage/repository/repository_factory.dart';
import '../../routes/app_pages.dart';

abstract class Logout {
  static Future<dynamic> getLogoutDialog() {
    return Get.defaultDialog(
      radius: 10.0,
      contentPadding: const EdgeInsets.all(10.0),
      title: 'Are you sure?',
      middleText: '',
      textConfirm: 'Okay',
      confirm: OutlinedButton.icon(
        onPressed: () {
          logUserOut();
          // if (Get.isDialogOpen==true) Get.back(closeOverlays: true);
        },
        icon: const Icon(
          Icons.check_circle,
          color: Colors.red,
        ),
        label: const Text(
          'Yes',
          style: TextStyle(color: Colors.red),
        ),
      ),
      cancel: OutlinedButton.icon(
        onPressed: () => Get.back(),
        icon: const Icon(
          Icons.cancel,
          color: Colors.green,
        ),
        label: const Text(
          'No',
          style: TextStyle(color: Colors.green),
        ),
      ),
    );
  }

  static void logUserOut() {
    RepoFactory.userAccount.deleteAll();
    Hive.box(Constants.TOKEN_BOX_KEY).clear();
    Get.offAllNamed(Routes.LOGIN);
  }
}
