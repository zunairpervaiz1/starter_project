import 'package:flutter_starter_project/data/network/api_services.dart';
import 'package:flutter_starter_project/models/users_model/users_model.dart';
import 'package:flutter_starter_project/res/consts/app_url.dart';

class HomeRepository {
  final _apiServices = ApiServices();

  Future<UsersModel> getUsers() async {
    dynamic res = await _apiServices.getApi(AppUrl.usersApi);
    return UsersModel.fromJson(res);
  }
}
