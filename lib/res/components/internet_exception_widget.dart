import 'package:flutter/material.dart';
import 'package:flutter_starter_project/res/components/rounded_button.dart';
import 'package:flutter_starter_project/res/consts/colors.dart';
import 'package:get/get.dart';

//Exception if internet is lost

class InternetExceptionWidget extends StatefulWidget {
  final VoidCallback onPress;
  const InternetExceptionWidget({super.key, required this.onPress});

  @override
  State<InternetExceptionWidget> createState() => _InternetExceptionWidgetState();
}

class _InternetExceptionWidgetState extends State<InternetExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.cloud_off,
          color: AppColors.greyColor,
          size: 50,
        ),
        const SizedBox(height: 20),
        Center(
            child: Text(
          "internet_exception".tr,
          textAlign: TextAlign.center,
        )),
        SizedBox(
          height: context.height * 0.05,
        ),
        RoundedButton(btnText: "retry", onPress: widget.onPress)
      ],
    );
  }
}
