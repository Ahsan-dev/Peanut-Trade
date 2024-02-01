import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:peanut_trade/app/widgets/default_screen_wrapper.dart';
import 'package:peanut_trade/core/app_theme.dart';
import 'package:peanut_trade/core/size_config.dart';
import 'package:peanut_trade/data/models/open_trade.dart';
import 'package:peanut_trade/data/models/user_account.dart';
import 'package:peanut_trade/data/providers.dart';
import 'package:peanut_trade/data/table_constants.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() => DefaultScreenWrapper(
        title: "Total Profit: ${controller.totalProfit.value.toPrecision(2)}",
        showTopBar: true,
        isScrollable: false,
        showStartDrawer: false,
        showEndDrawer: false,
        margin: EdgeInsets.zero,
        showBackBtn: true,
        appBarType: AppBarType.HOME,
        child: Stack(
          children: [
            controller.isLoading.value? CircularProgressIndicator():Container(),
            HomeBody(),
          ],
        )
    ));
  }
}

class HomeBody extends GetView<HomeController> {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => RefreshIndicator(
      onRefresh: controller.getTrades,
      child: ListView.builder(
        itemCount: controller.tradeList.value.length,
          itemBuilder:(context, index) {
            var trade = controller.tradeList.value[index];
            return TradeWidget(trade: trade);
          }
      ),
    ));
  }
}

class TradeWidget extends GetView<HomeController> {
  const TradeWidget({
    super.key,
    required this.trade
  });

  final OpenTrade trade;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: SizeConfig().icon15(),
        vertical: SizeConfig().icon10()/2
      ),
      padding: EdgeInsets.all(SizeConfig().icon10()),
      decoration: BoxDecoration(
        color: CustomColors.getWhiteGreySkuCardColor(),
        border: Border(
          bottom: BorderSide(color: AppTheme().colorScheme.secondary, width: SizeConfig().icon10()/3)
        ),
        boxShadow: [
          BoxShadow(
              color: const Color(0xFF000000).withOpacity(0.05),
              blurRadius: 5,
              spreadRadius: 0,
              offset: const Offset(0.0, 0.0)
          ),
          BoxShadow(
              color: const Color(0xFF000000).withOpacity(.05),
              blurRadius: 3,
              spreadRadius: 1,
              offset: const Offset(0.0, 0.0)
          )
        ]
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Ticket: ${trade.ticket}"),
          Text("Profit: ${trade.profit}"),
          Text("Current Price: ${trade.currentPrice}")
        ],
      ),
    );
  }
}


