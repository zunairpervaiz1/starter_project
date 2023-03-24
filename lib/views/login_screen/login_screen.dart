import 'package:flutter/material.dart';
import 'package:flutter_starter_project/res/components/rounded_button.dart';
import 'package:flutter_starter_project/res/components/textfield_widget.dart';
import 'package:flutter_starter_project/res/consts/fonts.dart';
import 'package:flutter_starter_project/res/consts/images.dart';
import 'package:flutter_starter_project/res/consts/strings.dart';
import 'package:flutter_starter_project/res/consts/styles.dart';
import 'package:flutter_starter_project/view_models/login_view_model/login_view_model.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final loginController = Get.put(LoginViewModel());

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(12),
        alignment: Alignment.center,
        child: Obx(
          () => Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  ImageAssets.logo,
                  width: 120,
                ),
                const SizedBox(height: 50),
                Text(
                  AppStrings.loginToContinue.tr,
                  style: FontStyle.boldStyle(
                    size: 18,
                    fontFamily: AppFonts.poppinsSemibold,
                  ),
                ),
                const SizedBox(height: 20),
                CustomTextFormField(
                  focusNode: loginController.emailFocusNode.value,
                  hint: AppStrings.emailHint,
                  textController: loginController.emailController,
                ),
                const SizedBox(height: 10),
                CustomTextFormField(
                  isObscured: true,
                  focusNode: loginController.passwordFocusNode.value,
                  hint: AppStrings.passwordHint,
                  textController: loginController.passwordController,
                ),
                const SizedBox(height: 20),
                loginController.isLoading.value
                    ? const CircularProgressIndicator()
                    : RoundedButton(
                        btnText: AppStrings.login,
                        onPress: () {
                          if (formKey.currentState!.validate()) {
                            loginController.loginAPI();
                          }
                        },
                        width: double.infinity,
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
