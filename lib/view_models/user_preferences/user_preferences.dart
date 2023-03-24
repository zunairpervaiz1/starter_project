import 'package:flutter_starter_project/models/login_model/login_model.dart';
import 'package:get_storage/get_storage.dart';

class UserPreferences {
  Future<bool> storeUser(LoginModel loginModel) async {
    var storage = GetStorage();
    await storage.write("token", loginModel.token.toString());
    return true;
  }

  Future<LoginModel> getUser() async {
    var storage = GetStorage();
    var token = await storage.read("token") ?? 'null';
    return LoginModel(token: token);
  }

  Future<bool> removeUser() async {
    var storage = GetStorage();
    await storage.erase();
    return true;
  }
}
