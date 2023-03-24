import 'package:flutter/material.dart';
import 'package:flutter_starter_project/data/response/status.dart';
import 'package:flutter_starter_project/res/consts/colors.dart';
import 'package:flutter_starter_project/res/consts/strings.dart';
import 'package:flutter_starter_project/res/routes/routes_name.dart';
import 'package:flutter_starter_project/view_models/home_view_model/home_view_model.dart';
import 'package:flutter_starter_project/view_models/user_preferences/user_preferences.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var homeController = Get.put(HomeViewModel());

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(AppStrings.home.tr),
        actions: [
          TextButton.icon(
            onPressed: () async {
              await UserPreferences().removeUser();
              Get.toNamed(RouteName.loginScreen);
            },
            icon: const Icon(
              Icons.exit_to_app,
              color: AppColors.whiteColor,
            ),
            label: const Text(
              "Logout",
              style: TextStyle(color: AppColors.whiteColor),
            ),
          )
        ],
      ),
      body: Obx(() {
        switch (homeController.requestStatus.value) {
          case Status.loading:
            return const Center(
              child: CircularProgressIndicator(),
            );

          case Status.error:
            return const Center(
              child: Text(AppStrings.errorOccured),
            );
          case Status.completed:
            return ListView.builder(
              itemCount: homeController.userList.value.data!.length,
              itemBuilder: (BuildContext context, int index) {
                var currentUser = homeController.userList.value.data![index];
                return Card(
                  child: ListTile(
                    title: Text(currentUser.firstName),
                    subtitle: Text(currentUser.email),
                    leading: CircleAvatar(
                      child: Container(
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        clipBehavior: Clip.hardEdge,
                        child: Image.network(
                          currentUser.avatar,
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
        }
      }),
    );
  }
}
