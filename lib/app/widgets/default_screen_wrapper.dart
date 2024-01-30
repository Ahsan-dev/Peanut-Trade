import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:peanut_trade/core/app_theme.dart';

import '../../core/size_config.dart';

typedef FutureCallback = Future<void> Function();

class DefaultScreenWrapper extends StatelessWidget {
  final String title;
  final Widget child;
  final bool? centerTitle;
  final bool showTopBar;
  final bool showBackBtn;
  final bool showEndDrawer;
  final bool showStartDrawer;
  final bool isScrollable;
  final Color? topBarColor;
  final double? elevation;
  final double? titleSpacing;
  final TextStyle? titleTextStyle;
  final VoidCallback? onBackPressed;
  final EdgeInsets? margin;
  final Widget? icon;
  final VoidCallback? onPressedIcon;

  // final bool showSearchBar;
  final bool showCartItemDeleteIcon;
  final AppBarType appBarType;
  final String? genericStringData;
  final String? genericIntData;
  final Color? backgroundColor;
  final bool pageRefresh;
  final FutureCallback? onRefresh;

  const DefaultScreenWrapper(
      {Key? key,
        required this.child,
        this.title = ' ',
        this.centerTitle = false,
        this.showTopBar = true,
        this.showBackBtn = true,
        this.showEndDrawer = true,
        this.showStartDrawer = false,
        // this.showSearchBar = false,
        this.isScrollable = true,
        this.topBarColor,
        this.titleTextStyle,
        this.elevation = 0,
        this.titleSpacing = 0,
        this.onBackPressed,
        this.margin = const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        this.icon,
        this.onPressedIcon,
        this.showCartItemDeleteIcon = false,
        this.appBarType = AppBarType.DEFAULT,
        this.genericStringData,
        this.genericIntData,
        this.backgroundColor = Colors.white,
        this.pageRefresh = false,
        this.onRefresh})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return getScreenComponents(context);
  }

  Scaffold getScreenComponents(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: showTopBar ? getAppTopBar(context) : null,
      body: isScrollable
          ? pageRefresh
          ? RefreshIndicator(
          onRefresh: onRefresh!,
          child: SingleChildScrollView(
            child: Container(
              margin: margin,
              child: child,
            ),
          ))
          : SingleChildScrollView(
        child: Container(
          margin: margin,
          child: child,
        ),
      )
          : Container(
        margin: margin,
        child: child,
      ),
      // drawer: showStartDrawer ? MenuDrawer() : null,
      // endDrawer: showEndDrawer ? MenuDrawer() : null,
    );
  }

  AppBar getAppTopBar(BuildContext context) {
    if (appBarType == AppBarType.HOME) {
      return AppBar(
        toolbarHeight: kToolbarHeight,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
        iconTheme:  IconThemeData(
            color: AppTheme().colorScheme.tertiary,
            size: SizeConfig().icon30()
        ),
        leading: showBackBtn
            ? IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black54,
            size: SizeConfig().icon25(),
          ),
          onPressed: () {
            onBackPressed != null ? onBackPressed!() : Get.back();
          },
        )
            : null,
        title: Text(""),
        titleSpacing:Get.width>550? SizeConfig().icon15(): titleSpacing,
        centerTitle: centerTitle,
        titleTextStyle: titleTextStyle,
        backgroundColor: AppTheme().colorScheme.tertiary,
        elevation: elevation,
      );
    }else{
      return AppBar(
        toolbarHeight: kToolbarHeight,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
        iconTheme:  IconThemeData(
            color: AppTheme().colorScheme.tertiary,
            size: SizeConfig().icon30()
        ),
        leading: showBackBtn
            ? IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black54,
            size: SizeConfig().icon25(),
          ),
          onPressed: () {
            onBackPressed != null ? onBackPressed!() : Get.back();
          },
        )
            : null,
        title: Text(""),
        titleSpacing:Get.width>550? SizeConfig().icon15(): titleSpacing,
        centerTitle: centerTitle,
        titleTextStyle: titleTextStyle,
        backgroundColor: AppTheme().colorScheme.tertiary,
        elevation: elevation,
      );
    }
  }

}



class AppBarType {
  const AppBarType._internal(this.value);

  final int value;

  static const DEFAULT = AppBarType._internal(0);
  static const HOME = AppBarType._internal(1);
  static const ACCOUNT = AppBarType._internal(2);

}