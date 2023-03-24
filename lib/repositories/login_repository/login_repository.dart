import 'package:flutter_starter_project/data/network/api_services.dart';
import 'package:flutter_starter_project/res/consts/app_url.dart';

class LoginRepository {
  final _apiServices = ApiServices();

  Future<dynamic> loginApi(var data) async {
    dynamic res = await _apiServices.postApi(data, AppUrl.loginApi);
    return res;
  }
}
