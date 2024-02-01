import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:peanut_trade/app/widgets/default_screen_wrapper.dart';
import 'package:peanut_trade/data/models/user_account.dart';
import 'package:peanut_trade/data/providers.dart';
import 'package:peanut_trade/data/table_constants.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBody(),
    );
  }
}

class HomeBody extends GetView<HomeController> {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => ListView.builder(
      itemCount: controller.tradeList.value.length,
        itemBuilder:(context, index) {
          var trade = controller.tradeList.value[index];
          return Text(trade.login.toString());
        }
    ));
  }
}

