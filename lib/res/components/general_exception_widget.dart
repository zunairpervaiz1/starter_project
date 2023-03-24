import 'package:flutter/material.dart';
import 'package:flutter_starter_project/res/components/rounded_button.dart';
import 'package:flutter_starter_project/res/consts/colors.dart';
import 'package:get/get.dart';

//Exception if some error occurs while processing data
class GeneralExceptionWidget extends StatefulWidget {
  final VoidCallback onPress;
  const GeneralExceptionWidget({super.key, required this.onPress});

  @override
  State<GeneralExceptionWidget> createState() => _GeneralExceptionWidgetState();
}

class _GeneralExceptionWidgetState extends State<GeneralExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.error,
          color: AppColors.greyColor,
          size: 50,
        ),
        const SizedBox(height: 20),
        Center(
            child: Text(
          "general_exception".tr,
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
