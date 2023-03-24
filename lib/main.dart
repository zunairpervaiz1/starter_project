import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_starter_project/res/consts/environments.dart';
import 'package:flutter_starter_project/res/consts/fonts.dart';
import 'package:flutter_starter_project/res/consts/strings.dart';
import 'package:flutter_starter_project/res/localization/languages.dart';
import 'package:flutter_starter_project/res/routes/routes.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  //ensuring everything required is initialized before executing first widget
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: Environment.filename); //ensuring to load enviroment file
  await GetStorage.init(); //ensuring to initialize GetStorage
  runApp(const MyApp()); //running the first widget
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //changing MaterialApp to GetMaterialApp as using GetX for state management
    return GetMaterialApp(
      title: AppStrings.appname.tr,
      theme: ThemeData(fontFamily: AppFonts.poppins), //setting default fonts as poppins
      getPages: AppRoutes.appRoutes(), //using getx routes for navigation
      translations: Languages(), //using getx translations for localization
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
    );
  }
}
