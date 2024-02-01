import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peanut_trade/app/widgets/default_screen_wrapper.dart';
import 'package:peanut_trade/core/app_theme.dart';
import 'package:peanut_trade/core/size_config.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print(controller.dummyText.value);
    return DefaultScreenWrapper(
      title: "",
      showTopBar: false,
      isScrollable: false,
      showStartDrawer: false,
      showEndDrawer: false,
      margin: EdgeInsets.zero,
      child: SplashBody()
    );
  }
}

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: AppTheme().colorScheme.secondary,
        image: DecorationImage(
          image: AssetImage("assets/images/splash_back.jpg"),
          fit: BoxFit.fill
        )
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icons/peanut_ic.png",
              height: SizeConfig().icon60()*2,
              width: SizeConfig().icon60()*2,
            ),
            SizedBox(height: SizeConfig().icon10(),),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Peanut Trade",
                  style: TextStyle(
                    fontSize: SizeConfig().font50()*1.5,
                    color: Colors.white,
                    fontWeight: FontWeight.w700
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

