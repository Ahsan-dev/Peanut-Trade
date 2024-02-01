import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

ThemeData AppTheme() {
  return ThemeData(
    fontFamily: 'Metropolis',
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: const Color(0xFF0F1423),
      secondary: const Color(0xFF127A2F),
      tertiary: const Color(0xFF4FA06B),
      onTertiary: const Color(0xFF55A443),
      background: const Color(0xFFFFFFFF),
    ),
  );
}


class CustomColors{
  static Color getLoginPageHeaderInner1(){
    return Get.context?.isDarkMode==true? Color(0xFF101834):Color(0xFF101834);
  }

  static Color getLoginPageHeaderInner2(){
    return Get.context?.isDarkMode==true? Color(0xFF18203D):Color(0xFF18203D);
  }

  static Color getHealthInfoBtncolor(){
    return Get.context?.isDarkMode==true? Color(0xFF0D9488):Color(0xFF0D9488);
  }

  static Color getTeleMedicineBtnColor(){
    return Get.context?.isDarkMode==true? Color(0xFFFF6E80):Color(0xFFFF6E80);
  }

  static Color getGreenBtnColor(){
    return Get.context?.isDarkMode==true? Color(0xFF26B33D):Color(0xFF26B33D);
  }

  static Color getOrderMsngrBtnColor(){
    return Get.context?.isDarkMode==true? Color(0xFF006AFF):Color(0xFF006AFF);
  }

  static Color getLightGreenColor(){
    return Get.context?.isDarkMode==true? Color(0xFFD1F9D5):Color(0xFFD1F9D5);
  }

  static Color getRedColor(){
    return Get.context?.isDarkMode==true? Color(0xFFEA3636):Color(0xFFEA3636);
  }

  static Color getSecondaryBtnColor(){
    return Get.context?.isDarkMode==true? Color(0xFF475272):Color(0xFF475272);
  }

  static Color getPlaceOrderBtnColor(){
    return Get.context?.isDarkMode==true? Color(0xFF293251):Color(0xFF293251);
  }

  static Color getSuccessColor(){
    return Get.context?.isDarkMode==true? Color(0xFF1F9F6A):Color(0xFF1F9F6A);
  }

  static Color getWhiteGreySkuCardColor(){
    return Get.context?.isDarkMode==true? Color(0xFFF2F2F2):Color(0xFFF2F2F2);
  }

  static Color getLightGreenBorderColor(){
    return Get.context?.isDarkMode==true? Color(0xFF6DD37D):Color(0xFF6DD37D);
  }

  static Color getTextColor1(){
    return Get.context?.isDarkMode==true? Color(0xFF2F2F2F):Color(0xFF2F2F2F);
  }

  static Color getBlackGreyColor1(){
    return Get.context?.isDarkMode==true? Color(0xFF454545):Color(0xFF454545);
  }

  static Color getSearchBarBorderColor(){
    return Get.context?.isDarkMode==true? Color(0xFFBDBDBD):Color(0xFFBDBDBD);
  }

  static Color getNeutralTextColor(){
    return Get.context?.isDarkMode==true? Color(0xFF676767):Color(0xFF676767);
  }

  static Color getDarkWhiteCardBGColor(){
    return Get.context?.isDarkMode==true? Color(0xFFE2E2E2):Color(0xFFE2E2E2);
  }

  //Order Status Colors:
  static Color getOrderShippingColor(){
    return Get.context?.isDarkMode==true? Color(0xFFEC3296):Color(0xFFEC3296);
  }

  static Color getOrderConfirmedColor(){
    return Get.context?.isDarkMode==true? Color(0xFF475272):Color(0xFF475272);
  }

  static Color getOrderCancelledColor(){
    return Get.context?.isDarkMode==true? Color(0xFFEA3636):Color(0xFFEA3636);
  }

  static Color getOrderDeliveredColor(){
    return Get.context?.isDarkMode==true? Color(0xFF25875E):Color(0xFF25875E);
  }

  static Color getOrderProcessingColor(){
    return Get.context?.isDarkMode==true? Color(0xFFFC8C4D):Color(0xFFFC8C4D);
  }

  static Color getOrderPendingColor(){
    return Get.context?.isDarkMode==true? Color(0xFF8C8C8C):Color(0xFF8C8C8C);
  }

  static Color getAlertA100Color(){
    return Get.context?.isDarkMode==true? Color(0xFFFFE4B1):Color(0xFFFFE4B1);
  }

  static Color getGrayishBlueColor(){
    return Get.context?.isDarkMode==true? Color(0xFF67727E):Color(0xFF67727E);
  }

  static Color getShimmerBaseColor(){
    return Get.context?.isDarkMode==true? Colors.grey.shade50: Colors.grey.shade50;
  }

  static Color getShimmerHighlightedColor(){
    return Get.context?.isDarkMode==true? Colors.grey.shade200: Colors.grey.shade200;
  }

  //Category Colors:

  static Color getOTCMedicineColor(){
    return Get.context?.isDarkMode==true? Color(0xFFA7F3D0): Color(0xFFA7F3D0);
  }
  static Color getSexualCareColor(){
    return Get.context?.isDarkMode==true? Color(0xFFFECACA): Color(0xFFFECACA);
  }
  static Color getFoodNutritionColor(){
    return Get.context?.isDarkMode==true? Color(0xFFFEF08A): Color(0xFFFEF08A);
  }
  static Color getBeautyCareColor(){
    return Get.context?.isDarkMode==true? Color(0xFFFAE8FF): Color(0xFFFAE8FF);
  }
  static Color getDeviceInstrumentationColor(){
    return Get.context?.isDarkMode==true? Color(0xFFFFEDD5): Color(0xFFFFEDD5);
  }
  static Color getWomenCareColor(){
    return Get.context?.isDarkMode==true? Color(0xFFFBCFE8): Color(0xFFFBCFE8);
  }
  static Color getPersonalCareColor(){
    return Get.context?.isDarkMode==true? Color(0xFFDDD6FE): Color(0xFFDDD6FE);
  }
  static Color getBabyCareColor(){
    return Get.context?.isDarkMode==true? Color(0xFFBFDBFE): Color(0xFFBFDBFE);
  }
  static Color getElderlyCareColor(){
    return Get.context?.isDarkMode==true? Color(0xFFA5F3FC): Color(0xFFA5F3FC);
  }
  static Color getPetEssentialColor(){
    return Get.context?.isDarkMode==true? Color(0xFFD9F99D): Color(0xFFD9F99D);
  }
}
