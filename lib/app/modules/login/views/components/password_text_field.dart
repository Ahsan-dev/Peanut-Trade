import 'package:flutter/material.dart';

import '../../../../../core/app_theme.dart';
import '../../../../../core/size_config.dart';
import '../../../../widgets/custom_text_input.dart';
import '../../controllers/login_controller.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    super.key,
    required this.controller,
  });

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            'Password',
            style: TextStyle(
              color: AppTheme().colorScheme.primary,
              fontSize: SizeConfig().font45(),
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 8,
              child: RequiredTextInput(
                enabled: true,
                style: TextStyle(fontSize: SizeConfig().font45(), fontWeight: FontWeight.w500),
                controller: controller.password,
                keyboardType: TextInputType.text,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(SizeConfig().icon10()),
                    bottomRight: Radius.circular(SizeConfig().icon10()),
                  ),
                  borderSide: BorderSide(
                      width: 1.0,
                      color: CustomColors.getLightGreenBorderColor()),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(SizeConfig().icon10()),
                    bottomRight: Radius.circular(SizeConfig().icon10()),
                    topLeft: Radius.circular(SizeConfig().icon10()),
                    bottomLeft: Radius.circular(SizeConfig().icon10()),
                  ),
                  borderSide: BorderSide(
                      width: 1.0,
                      color: CustomColors.getLightGreenBorderColor()),
                ),
                enableBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(SizeConfig().icon10()),
                    bottomRight: Radius.circular(SizeConfig().icon10()),
                    topLeft: Radius.circular(SizeConfig().icon10()),
                    bottomLeft: Radius.circular(SizeConfig().icon10()),
                  ),
                  borderSide: BorderSide(
                      width: 1.0,
                      color: CustomColors.getLightGreenBorderColor()),
                ),
                fillColor: CustomColors.getWhiteGreySkuCardColor(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}