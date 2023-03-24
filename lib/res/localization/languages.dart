import 'package:flutter_starter_project/res/consts/strings.dart';
import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          AppStrings.emailHint: "eg. eve.holt@reqres.in",
          AppStrings.passwordHint: "eg. cityslicka",
          AppStrings.internetException: "We're unable to connect to internet.\nPlease check your data connection.",
          AppStrings.generalException: "We're unable to process your request.\nPlease try again.",
          AppStrings.retry: "Retry",
          AppStrings.login: "Login",
          AppStrings.loginToContinue: "Login to continue",
          AppStrings.poweredBy: "Powered by Flutter",
          AppStrings.home: "Homescreen",
          AppStrings.errorOccured: "Some error occured while fetching data",
          AppStrings.appname: "Starter Project"
        },
        'ur_PK': {
          AppStrings.emailHint: "ای میل درج کریں",
          AppStrings.passwordHint: "پاس ورڈ درج کریں",
          AppStrings.internetException: "ہم انٹرنیٹ سے جڑنے سے قاصر ہیں\nبراہ کرم اپنا ڈیٹا کنکشن چیک کریں۔",
          AppStrings.retry: "دوبارہ کوشش کریں",
          AppStrings.generalException: "ہم آپ کی درخواست پر کارروائی کرنے سے قاصر ہیں۔\nبراہ کرم دوبارہ کوشش کریں۔",
          AppStrings.login: "لاگ ان کریں",
          AppStrings.loginToContinue: "جاری رکھنے کے لیے لاگ ان کریں۔",
          AppStrings.poweredBy: "Powered by Flutter",
          AppStrings.home: "گھر کی سکرین",
          AppStrings.appname: "Starter Project",
          AppStrings.errorOccured: "ڈیٹا حاصل کرتے وقت کچھ خرابی پیش آگئی"
        }
      };
}
