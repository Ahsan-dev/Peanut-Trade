import 'package:get/get.dart';
import 'package:peanut_trade/data/data_sync/trade_sync_controller.dart';
import 'package:peanut_trade/data/data_sync/user_sync_controller.dart';
import 'package:peanut_trade/data/models/open_trade.dart';
import 'package:peanut_trade/data/models/user_account.dart';

class HomeController extends GetxController {

  RxString name = "".obs;
  RxString address = "".obs;
  RxString phone = "".obs;
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
    await TradeSyncController().getAllTrades().then((value) {
      value.fold(
          (fail) {

          },
          (ok) {
            tradeList.value = ok;
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
