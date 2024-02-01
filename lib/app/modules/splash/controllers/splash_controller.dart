import 'dart:async';

import 'package:get/get.dart';
import 'package:peanut_trade/app/modules/login/views/login_view.dart';

import '../../../../data/providers.dart';
import '../../../routes/app_pages.dart';

class SplashController extends GetxController {

  RxString dummyText = "".obs;

  Future<void> redirectToHome() async{
    Timer(const Duration(seconds: 3), () async{
      if(UserProvider().provideUser() != null){
        Get.offNamed(Routes.HOME);
      }else{
        Get.offNamed(Routes.LOGIN);
      }
    });
  }

  @override
  void onInit() {
    super.onInit();
    print("Splash on init called");
    redirectToHome();
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
