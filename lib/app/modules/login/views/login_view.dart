import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peanut_trade/app/widgets/default_screen_wrapper.dart';
import 'package:peanut_trade/core/app_theme.dart';
import 'package:peanut_trade/core/helper_functions/custom_snackbar_alert.dart';
import 'package:peanut_trade/core/size_config.dart';

import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text_input.dart';
import '../controllers/login_controller.dart';
import 'components/login_text_field.dart';
import 'components/password_text_field.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return DefaultScreenWrapper(
        title: "Login",
        showTopBar: false,
        isScrollable: false,
        showStartDrawer: false,
        showEndDrawer: false,
        margin: EdgeInsets.zero,
        // appBarType: AppBarType.HOME,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig().icon20()),
          child: LoginBody(),
        )
    );
  }
}

class LoginBody extends GetView<LoginController> {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: Stack(
        children: [
          Obx(() => Center(
            child: controller.isLoading.value? CircularProgressIndicator():Container(),
          ),),
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      "assets/icons/peanut_ic.png",
                      height: SizeConfig().icon50()*2.5,
                      width: SizeConfig().icon50()*2.5,
                    ),
                    SizedBox(height: SizeConfig().icon20(),),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: SizeConfig().icon16()),
                      child: Text(
                        "Login to access your trades, profit and more!",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: SizeConfig().font35()),
                      ),
                    ),
                  ],
                )
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LoginTextField(controller: controller),
                    PasswordTextField(controller: controller),
                    SizedBox(height: SizeConfig().icon25(),),
                    LoginButton(controller: controller)
                  ],
                )
              )
            ],
          ),
        ],
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.controller
  });

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      width: MediaQuery.of(context).size.width,
      height: SizeConfig().icon50(),
      // title: controller.showOtp.value ? 'Login' : 'Get OTP',
      title: 'Submit',
      color: AppTheme().colorScheme.secondary,
      btnTextStyle: TextStyle(
          color: Colors.white,
          fontSize: SizeConfig().font40()
      ),
      onPressed: (){
        if(controller.login.text.isEmpty){
          showSnackbarAlertPlain("Enter login");
        }else if(controller.password.text.isEmpty){
          showSnackbarAlertPlain("Enter password");
        }else{
          controller.loginUser();
        }

      },
    );
  }
}


