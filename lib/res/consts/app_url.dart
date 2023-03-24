import 'package:flutter_starter_project/res/consts/environments.dart';

//AppUrl class contains all the urls to be used in this app
class AppUrl {
  static String baseUrl = Environment.appUrl, loginApi = "$baseUrl/api/login", usersApi = "$baseUrl/api/users?page=2";
}
