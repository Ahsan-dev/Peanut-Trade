import 'package:flutter/material.dart';

import '../../core/app_theme.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.title = 'BtnTitle',
    this.child,
    this.onPressed,
    this.btnTextStyle = const TextStyle(fontSize: 20),
    this.color,
    this.height,
    this.width,
    this.shape,
    this.decoration,
    this.icon,
    this.btnPadding = const EdgeInsets.all(8),
    this.elevation
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String title;
  final Widget? child;
  final TextStyle btnTextStyle;
  final Color? color;
  final double? height;
  final double? width;
  final MaterialStateProperty<OutlinedBorder?>? shape;
  final EdgeInsetsGeometry btnPadding;
  final BoxDecoration? decoration;
  final Widget? icon;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: Container(
        height: height,
        width: width,
        decoration: decoration,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(color ?? AppTheme().colorScheme.secondary),
            shape: shape,
            padding: MaterialStatePropertyAll(btnPadding),
            elevation: MaterialStatePropertyAll(elevation)
          ),
          child: child ??
              (icon != null
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        icon ?? Container(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            title,
                            style: btnTextStyle,
                          ),
                        ),
                      ],
                    )
                  : Text(
                      title,
                      style: btnTextStyle,
                    )),
        ),
      ),
    );
  }
}
