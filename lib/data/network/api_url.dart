import 'package:peanut_trade/data/network/server_address.dart';

abstract class ApiUrls {
  static String baseUrl = getBaseUrl();

  static String getLoginUrl = "${baseUrl}ClientCabinetBasic/IsAccountCredentialsCorrect";
  static String getUserAccountUrl = "${baseUrl}ClientCabinetBasic/GetAccountInformation";
  static String getLastFourDigitPhoneUrl = "${baseUrl}ClientCabinetBasic/GetLastFourNumbersPhone";
  static String getOpenTradesListUrl = "${baseUrl}ClientCabinetBasic/GetOpenTrades";


  static String getBaseUrl() {
    return ServerAddress.live;
  }

}