import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:peanut_trade/app/widgets/default_screen_wrapper.dart';
import 'package:peanut_trade/core/constants.dart';
import 'package:peanut_trade/core/size_config.dart';
import 'package:peanut_trade/data/providers.dart';

import '../../../../core/app_theme.dart';
import '../controllers/user_account_controller.dart';

class UserAccountView extends GetView<UserAccountController> {
  const UserAccountView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultScreenWrapper(
      title: "Account of ${UserProvider().provideUser()?.name}",
      showTopBar: true,
      isScrollable: false,
      showStartDrawer: false,
      showEndDrawer: false,
      margin: EdgeInsets.zero,
      showBackBtn: true,
      appBarType: AppBarType.ACCOUNT,
      child: AccountBody()
    );
  }
}

class AccountBody extends GetView<UserAccountController> {
  const AccountBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig().icon15(),
            vertical: SizeConfig().icon20()
          ),
          decoration:BoxDecoration(
            color: CustomColors.getWhiteGreySkuCardColor()
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icons/mint-light-dp.svg",
                    height: SizeConfig().icon60()*2,
                    width: SizeConfig().icon60()*2,
                  )
                ],
              ),
              SizedBox(height: SizeConfig().icon20(),),
              Text(
                "${UserProvider().provideUser()?.name}",
                style: TextStyle(
                  fontSize: SizeConfig().font45(),
                  color: CustomColors.getTextColor1(),
                  fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: SizeConfig().icon10()/2,),
              Text(
                Hive.box(Constants.TOKEN_BOX_KEY).get(Constants.PHONE_KEY),
                style: TextStyle(
                    fontSize: SizeConfig().font35(),
                    color: CustomColors.getTextColor1(),
                    fontWeight: FontWeight.w500
                ),
              ),

            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(SizeConfig().icon15()),
          child: Container(
            padding: EdgeInsets.all(SizeConfig().icon10()),
            decoration: BoxDecoration(
              color: CustomColors.getGreenBtnColor(),
              borderRadius: BorderRadius.circular(SizeConfig().icon10())
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Balance: ${UserProvider().provideUser()?.balance}",
                  style: TextStyle(
                      fontSize: SizeConfig().font45(),
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),

          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: SizeConfig().icon10(),
            horizontal: SizeConfig().icon15(),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Card(
                  elevation: 0,
                  child: Container(
                    padding: EdgeInsets.all(SizeConfig().icon10()),
                    decoration: BoxDecoration(
                      color: CustomColors.getPetEssentialColor(),
                      borderRadius: BorderRadius.circular(SizeConfig().icon10())
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Total Trades",
                          style: TextStyle(
                              fontSize: SizeConfig().font35(),
                              color: CustomColors.getNeutralTextColor(),
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: SizeConfig().icon10(),),
                        Text(
                          "${UserProvider().provideUser()?.totalTradesCount}",
                          style: TextStyle(
                              fontSize: SizeConfig().font45(),
                              color: CustomColors.getTextColor1(),
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ),
              SizedBox(width: SizeConfig().icon10(),),
              Expanded(
                  flex: 1,
                  child: Card(
                    elevation: 0,
                    child: Container(
                      padding: EdgeInsets.all(SizeConfig().icon10()),
                      decoration: BoxDecoration(
                          color: CustomColors.getPetEssentialColor(),
                          borderRadius: BorderRadius.circular(SizeConfig().icon10())
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Total Trades Volume",
                            style: TextStyle(
                                fontSize: SizeConfig().font35(),
                                color: CustomColors.getNeutralTextColor(),
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: SizeConfig().icon10(),),
                          Text(
                            "${UserProvider().provideUser()?.totalTradesVolume}",
                            style: TextStyle(
                                fontSize: SizeConfig().font45(),
                                color: CustomColors.getTextColor1(),
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: SizeConfig().icon15(),
            horizontal: SizeConfig().icon15()
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(
                'assets/icons/location-04.svg',
                height: SizeConfig().icon25(),
                width: SizeConfig().icon25(),
              ),
              SizedBox(width: SizeConfig().icon10()/2),
              Text(
                "Addresses",
                style: TextStyle(
                    color: CustomColors.getTextColor1(),
                    fontWeight: FontWeight.w600,
                    fontSize: SizeConfig().font40()
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
              vertical: SizeConfig().icon10(),
              horizontal: SizeConfig().icon15(),
          ),
          padding: EdgeInsets.symmetric(vertical: SizeConfig().icon17(), horizontal: SizeConfig().icon17()),
          decoration: BoxDecoration(
              color:CustomColors.getLightGreenColor(),
              borderRadius: BorderRadius.circular(SizeConfig().icon10()),
              border: Border.all(color: CustomColors.getSuccessColor())
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 18,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${UserProvider().provideUser()?.address}",
                          maxLines: 2,
                          style: TextStyle(
                              fontSize: SizeConfig().font30(),
                              fontWeight: FontWeight.w500,
                              color: CustomColors.getTextColor1()
                          ),
                        ),
                        SizedBox(height: SizeConfig().icon10()),
                        Text(
                          "${UserProvider().provideUser()?.city}, ${UserProvider().provideUser()?.country}",
                          maxLines: 2,
                          style: TextStyle(
                              fontSize: SizeConfig().font30(),
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        Text(
                          "${UserProvider().provideUser()?.zipCode}",
                          maxLines: 2,
                          style: TextStyle(
                              fontSize: SizeConfig().font30(),
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

