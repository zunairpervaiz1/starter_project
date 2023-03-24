import 'package:flutter/material.dart';
import 'package:flutter_starter_project/res/consts/styles.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../consts/colors.dart';

class RoundedButton extends StatelessWidget {
  final VoidCallback onPress;
  final Color btnColor;
  final String btnText;
  final Color textColor;
  final double height;
  final double width;
  final double cornerRadius;
  const RoundedButton(
      {super.key,
      required this.btnText,
      this.btnColor = AppColors.blueColor,
      required this.onPress,
      this.height = 44,
      this.width = 160,
      this.cornerRadius = 12,
      this.textColor = AppColors.whiteColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(cornerRadius),
          color: btnColor,
        ),
        child: Text(
          btnText.tr,
          style: FontStyle.boldStyle(textColor: AppColors.whiteColor),
        ),
      ),
    );
  }
}
