import 'package:flutter/material.dart';
import 'package:flutter_starter_project/res/consts/images.dart';
import 'package:flutter_starter_project/res/consts/strings.dart';
import 'package:flutter_starter_project/res/consts/styles.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../../view_models/services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    SplashServices().isLoggedIn();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          ImageAssets.logo,
          width: 140,
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
            alignment: Alignment.bottomCenter,
            height: 54,
            child: Text(AppStrings.poweredBy.tr, style: FontStyle.boldStyle())),
      ),
    );
  }
}
