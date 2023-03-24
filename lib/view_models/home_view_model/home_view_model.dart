import 'package:flutter_starter_project/data/response/status.dart';
import 'package:flutter_starter_project/models/users_model/users_model.dart';
import 'package:flutter_starter_project/repositories/home_repository/home_repository.dart';
import 'package:flutter_starter_project/res/utils/utils.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  // execute our getUsers method on start of this widget
  @override
  void onInit() {
    super.onInit();
    getUsers();
  }

  final _api = HomeRepository();
  final requestStatus = Status.loading.obs;
  final userList = UsersModel().obs;

  //set api request status according to the reponse
  setRequestStatus(Status value) => requestStatus.value = value;
  // set user list according to the response
  setUserList(UsersModel value) => userList.value = value;

  //call the getUsers method to fetch data
  getUsers() {
    _api.getUsers().then((value) {
      setRequestStatus(Status.completed);
      setUserList(value);
    }).onError((error, stackTrace) {
      setRequestStatus(Status.error);
      Utils.showSnackBar("Error", error.toString());
    });
  }
}
