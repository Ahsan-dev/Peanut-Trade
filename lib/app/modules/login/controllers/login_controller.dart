import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peanut_trade/app/routes/app_pages.dart';
import 'package:peanut_trade/data/data_sync/user_sync_controller.dart';

class LoginController extends GetxController {
  TextEditingController login = TextEditingController();
  TextEditingController password = TextEditingController();
  final count = 0.obs;
  RxBool isLoading = false.obs;

  Future loginUser() async {
    isLoading.value = true;
    UserSyncController().login(int.parse(login.text), password.text).then((value){
      value.fold(
          (fail) {
            isLoading.value = false;
          },
          (ok) {
            isLoading.value = false;
            Get.offNamed(Routes.HOME);
          }
      );
    });
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}
