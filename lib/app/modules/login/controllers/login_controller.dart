import 'package:get/get.dart';
import 'package:peanut_trade/app/routes/app_pages.dart';
import 'package:peanut_trade/data/data_sync/user_sync_controller.dart';

class LoginController extends GetxController {


  final count = 0.obs;

  Future loginUser() async {
    UserSyncController().login(2088888, "ral11lod").then((value){
      value.fold(
          (fail) {

          },
          (ok) {
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

  void increment() => count.value++;
}
