import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SizeConfig {

  /// create singleton instance
  SizeConfig._internal();
  static final SizeConfig _instance = SizeConfig._internal();
  factory SizeConfig() => _instance;


  double screenWidth = Get.context?.orientation == Orientation.portrait ? Get.mediaQuery.size.width : Get.mediaQuery.size.height;

  double screenHeight = Get.context?.orientation == Orientation.portrait ? Get.mediaQuery.size.height : Get.mediaQuery.size.width;

  double infinityHeight() => double.infinity;

  double infinityWidth() => double.infinity;

  double blockSizeHorizontal() => screenWidth / 100;

  double blockSizeVertical() => screenHeight / 100;

  double _safeAreaHorizontal() => Get.mediaQuery.padding.left + Get.mediaQuery.padding.right;

  double _safeAreaVertical() => Get.mediaQuery.padding.top + Get.mediaQuery.padding.bottom;

  double safeBlockHorizontal() => (screenWidth - (Get.context?.orientation == Orientation.portrait ? _safeAreaHorizontal() : _safeAreaVertical())) / 100;

  double safeBlockVertical() => (screenHeight - (Get.context?.orientation == Orientation.portrait ? _safeAreaVertical() : _safeAreaHorizontal())) / 100;

  double font20() => safeBlockHorizontal() * 2.0;
  double font21() => safeBlockHorizontal() * 2.1;
  double font22() => safeBlockHorizontal() * 2.2;
  double font23() => safeBlockHorizontal() * 2.3;
  double font24() => safeBlockHorizontal() * 2.4;
  double font25() => safeBlockHorizontal() * 2.5;
  double font26() => safeBlockHorizontal() * 2.6;
  double font27() => safeBlockHorizontal() * 2.7;
  double font28() => safeBlockHorizontal() * 2.8;
  double font29() => safeBlockHorizontal() * 2.9;
  double font30() => safeBlockHorizontal() * 3.0;
  double font31() => safeBlockHorizontal() * 3.1;
  double font32() => safeBlockHorizontal() * 3.2;
  double font33() => safeBlockHorizontal() * 3.3;
  double font34() => safeBlockHorizontal() * 3.4;
  double font35() => safeBlockHorizontal() * 3.5;
  double font36() => safeBlockHorizontal() * 3.6;
  double font37() => safeBlockHorizontal() * 3.7;
  double font38() => safeBlockHorizontal() * 3.8;
  double font39() => safeBlockHorizontal() * 3.9;
  double font40() => safeBlockHorizontal() * 4.0;
  double font41() => safeBlockHorizontal() * 4.1;
  double font42() => safeBlockHorizontal() * 4.2;
  double font43() => safeBlockHorizontal() * 4.3;
  double font44() => safeBlockHorizontal() * 4.4;
  double font45() => safeBlockHorizontal() * 4.5;
  double font46() => safeBlockHorizontal() * 4.6;
  double font47() => safeBlockHorizontal() * 4.7;
  double font48() => safeBlockHorizontal() * 4.8;
  double font49() => safeBlockHorizontal() * 4.9;
  double font50() => safeBlockHorizontal() * 5.0;
  double font51() => safeBlockHorizontal() * 5.1;
  double font52() => safeBlockHorizontal() * 5.2;
  double font53() => safeBlockHorizontal() * 5.3;
  double font54() => safeBlockHorizontal() * 5.4;
  double font55() => safeBlockHorizontal() * 5.5;
  double font56() => safeBlockHorizontal() * 5.6;
  double font57() => safeBlockHorizontal() * 5.7;
  double font58() => safeBlockHorizontal() * 5.8;
  double font59() => safeBlockHorizontal() * 5.9;
  double font60() => safeBlockHorizontal() * 6.0;
  double font61() => safeBlockHorizontal() * 6.1;
  double font62() => safeBlockHorizontal() * 6.2;
  double font63() => safeBlockHorizontal() * 6.3;
  double font64() => safeBlockHorizontal() * 6.4;
  double font65() => safeBlockHorizontal() * 6.5;
  double font66() => safeBlockHorizontal() * 6.6;
  double font67() => safeBlockHorizontal() * 6.7;
  double font68() => safeBlockHorizontal() * 6.8;
  double font69() => safeBlockHorizontal() * 6.9;
  double font70() => safeBlockHorizontal() * 7.0;
  double font71() => safeBlockHorizontal() * 7.1;
  double font72() => safeBlockHorizontal() * 7.2;
  double font73() => safeBlockHorizontal() * 7.3;
  double font74() => safeBlockHorizontal() * 7.4;
  double font75() => safeBlockHorizontal() * 7.5;
  double font76() => safeBlockHorizontal() * 7.6;
  double font77() => safeBlockHorizontal() * 7.7;
  double font78() => safeBlockHorizontal() * 7.8;
  double font79() => safeBlockHorizontal() * 7.9;
  double font80() => safeBlockHorizontal() * 8.0;
  double font81() => safeBlockHorizontal() * 8.1;
  double font82() => safeBlockHorizontal() * 8.2;
  double font83() => safeBlockHorizontal() * 8.3;
  double font84() => safeBlockHorizontal() * 8.4;
  double font85() => safeBlockHorizontal() * 8.5;
  double font86() => safeBlockHorizontal() * 8.6;
  double font87() => safeBlockHorizontal() * 8.7;
  double font88() => safeBlockHorizontal() * 8.8;
  double font89() => safeBlockHorizontal() * 8.9;
  double font90() => safeBlockHorizontal() * 9.0;

  double icon10() => safeBlockHorizontal() * 1.0* 2;
  double icon11() => safeBlockHorizontal() * 1.1* 2;
  double icon12() => safeBlockHorizontal() * 1.2* 2;
  double icon13() => safeBlockHorizontal() * 1.3* 2;
  double icon14() => safeBlockHorizontal() * 1.4* 2;
  double icon15() => safeBlockHorizontal() * 1.5* 2;
  double icon16() => safeBlockHorizontal() * 1.6* 2;
  double icon17() => safeBlockHorizontal() * 1.7* 2;
  double icon18() => safeBlockHorizontal() * 1.8* 2;
  double icon19() => safeBlockHorizontal() * 1.9* 2;
  double icon20() => safeBlockHorizontal() * 2.0* 2;
  double icon21() => safeBlockHorizontal() * 2.1* 2;
  double icon22() => safeBlockHorizontal() * 2.2* 2;
  double icon23() => safeBlockHorizontal() * 2.3* 2;
  double icon24() => safeBlockHorizontal() * 2.4* 2;
  double icon25() => safeBlockHorizontal() * 2.5* 2;
  double icon26() => safeBlockHorizontal() * 2.6* 2;
  double icon27() => safeBlockHorizontal() * 2.7* 2;
  double icon28() => safeBlockHorizontal() * 2.8* 2;
  double icon29() => safeBlockHorizontal() * 2.9* 2;
  double icon30() => safeBlockHorizontal() * 3.0* 2;
  double icon31() => safeBlockHorizontal() * 3.1* 2;
  double icon32() => safeBlockHorizontal() * 3.2* 2;
  double icon33() => safeBlockHorizontal() * 3.3* 2;
  double icon34() => safeBlockHorizontal() * 3.4* 2;
  double icon35() => safeBlockHorizontal() * 3.5* 2;
  double icon36() => safeBlockHorizontal() * 3.6* 2;
  double icon37() => safeBlockHorizontal() * 3.7* 2;
  double icon38() => safeBlockHorizontal() * 3.8* 2;
  double icon39() => safeBlockHorizontal() * 3.9* 2;
  double icon40() => safeBlockHorizontal() * 4.0* 2;
  double icon41() => safeBlockHorizontal() * 4.1* 2;
  double icon42() => safeBlockHorizontal() * 4.2* 2;
  double icon43() => safeBlockHorizontal() * 4.3* 2;
  double icon44() => safeBlockHorizontal() * 4.4* 2;
  double icon45() => safeBlockHorizontal() * 4.5* 2;
  double icon46() => safeBlockHorizontal() * 4.6* 2;
  double icon47() => safeBlockHorizontal() * 4.7* 2;
  double icon48() => safeBlockHorizontal() * 4.8* 2;
  double icon49() => safeBlockHorizontal() * 4.9* 2;
  double icon50() => safeBlockHorizontal() * 5.0* 2;
  double icon51() => safeBlockHorizontal() * 5.1* 2;
  double icon52() => safeBlockHorizontal() * 5.2* 2;
  double icon53() => safeBlockHorizontal() * 5.3* 2;
  double icon54() => safeBlockHorizontal() * 5.4* 2;
  double icon55() => safeBlockHorizontal() * 5.5* 2;
  double icon56() => safeBlockHorizontal() * 5.6* 2;
  double icon57() => safeBlockHorizontal() * 5.7* 2;
  double icon58() => safeBlockHorizontal() * 5.8* 2;
  double icon59() => safeBlockHorizontal() * 5.9* 2;
  double icon60() => safeBlockHorizontal() * 6.0* 2;
}

final double toolbarHeight = SizeConfig().icon35()*2;