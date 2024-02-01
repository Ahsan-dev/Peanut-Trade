import 'package:dartz/dartz_unsafe.dart';
import 'package:get/get.dart';
import 'package:peanut_trade/data/data_sync/trade_sync_controller.dart';
import 'package:peanut_trade/data/data_sync/user_sync_controller.dart';
import 'package:peanut_trade/data/models/open_trade.dart';
import 'package:peanut_trade/data/models/user_account.dart';

class HomeController extends GetxController {

  RxString name = "".obs;
  RxString address = "".obs;
  RxString phone = "".obs;
  RxDouble totalProfit = 0.0.obs;
  RxBool isLoading = false.obs;
  final user = Rxn<UserAccount>();
  RxList<OpenTrade> tradeList = <OpenTrade>[].obs;

  Future getUser() async {
    await UserSyncController().getUserAccount().then((value) {
      value.fold(
         (fail) {

         },
         (ok) {
          user.value = ok;
         });
    });
  }

  Future getPhone() async {
    await UserSyncController().getLastFourDigitPhone().then((value) {
      value.fold(
              (fail) {

          },
              (ok) {

          });
    });
  }


  Future getTrades() async {
    isLoading.value = true;
    totalProfit.value = 0.0;
    await TradeSyncController().getAllTrades().then((value) {
      value.fold(
          (fail) {
            isLoading.value = false;
          },
          (ok) {
            isLoading.value = false;
            tradeList.value = ok;
            for(var e in ok) {
              totalProfit.value += e.profit!;
            }
          }
      );
    });
  }

  @override
  void onInit() {
    super.onInit();
    getUser();
    getTrades();
    getPhone();
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
