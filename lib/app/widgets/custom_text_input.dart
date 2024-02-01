import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/app_theme.dart';
import '../../core/size_config.dart';

class CustomTextInput extends TextFormField {
  CustomTextInput({
    Key? key,
    super.controller,
    super.obscureText,
    super.keyboardType,
    String? labelText,
    TextStyle? labelTextStyle,
    String? hintText,
    TextStyle? hintTextStyle,
    OutlineInputBorder? border,
    OutlineInputBorder? enableBorder,
    OutlineInputBorder? focusedBorder,
    Widget? prefixIcon,
    Widget? suffixIcon,
    bool? enabled,
    int? maxLength,
    int? maxLines = 1,
    void Function(String)? onChanged,
    VoidCallback? onEditingComplete,
    bool isRequired = false,
    bool autofocus = false,
    bool readOnly = false,
    bool showCursor = true,
    GestureTapCallback? onTap,
    Color? fillColor = Colors.white,
    TextAlign textAlign = TextAlign.start,
    TextStyle? style,
    List<TextInputFormatter>? inputFormatters,
    EdgeInsetsGeometry? contentPadding
  }) : super(
          key: key,
          validator: isRequired
              ? (value) {
                  if (value == null || value.isEmpty) {
                    return '$labelText is required';
                  }
                  return null;
                }
              : null,
          onChanged: onChanged,
          maxLines: maxLines,
          onEditingComplete: onEditingComplete,
          maxLength: maxLength,
          onTap: onTap,
          textAlign: textAlign ?? TextAlign.start,
          decoration: InputDecoration(
            contentPadding: contentPadding ??
              EdgeInsets.symmetric(horizontal: SizeConfig().icon20(), vertical: SizeConfig().icon10()),
            labelText: labelText,
            border: border ?? const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(width: 1.0)
            ),
            enabledBorder: enableBorder ?? OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(width: 1.0, color: Colors.grey[300]!)
            ),
            focusedBorder: focusedBorder ?? OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(width: 1.0, color: CustomColors.getSearchBarBorderColor())
            ),
            labelStyle: labelTextStyle,
            hintText: hintText ?? labelText,
            hintStyle: hintTextStyle,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            enabled: enabled ?? true,
            fillColor: fillColor,
            filled: true

          ),
          style: style ?? TextStyle(fontSize: 15),
          autofocus: autofocus,
          showCursor: showCursor,
          readOnly: readOnly,
          textAlignVertical: TextAlignVertical.center,
          inputFormatters: inputFormatters,
        );
}

class RequiredTextInput extends CustomTextInput {
  RequiredTextInput({
    Key? key,
    super.controller,
    super.obscureText,
    super.keyboardType,
    super.labelText,
    super.labelTextStyle,
    super.hintText,
    super.hintTextStyle,
    super.prefixIcon,
    super.suffixIcon,
    super.enabled,
    super.maxLength,
    super.maxLines = 1,
    super.onChanged,
    super.onEditingComplete,
    super.autofocus,
    super.border,
    super.enableBorder,
    super.focusedBorder,
    super.onTap,
    super.fillColor,
    super.textAlign,
    super.style
  }) : super(
          isRequired: true,
        );
}
