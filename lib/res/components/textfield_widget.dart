import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController? textController;
  final FocusNode? focusNode;
  final String hint;
  final bool isObscured;

  const CustomTextFormField(
      {super.key, required this.hint, this.textController, this.focusNode, this.isObscured = false});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(width: 0.3),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return "Please fill the field";
          }
          return null;
        },
        obscureText: widget.isObscured,
        focusNode: widget.focusNode,
        controller: widget.textController,
        decoration: InputDecoration(
          hintText: widget.hint.tr,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
