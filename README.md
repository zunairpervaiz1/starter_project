# Flutter Starter Project

A project created in flutter using MVVM architecture pattern & GetX. It supports both android and iOS.

### Build Creation
We need `.env` files to create project builds. Following files should be downloaded/created and placed in the project 
directory same as the `lib` directory as follows.
```
starter-project/
    |- android/
    |- build/
    |- ios/
    |- lib/
    |- .env.production
    |- .env.development
```

#### Flavors Creation

We are using two flavors for our app and each flavor may have different properties than the other.

```
1- Development
2- Production
```

```
android/
    |- app/
        |- src/
        |- build.gradle
    |- gradle/
    |- ...
    
```

Open app level `build.gradle` file in your IDE. Navigate to `android { ... }` and you'll find the following code:

```
    flavorDimensions "env" 
    productFlavors {
        dev {
            dimension "env"
            resValue "string", "app_name", "Starter Dev"
            applicationId "com.example.starter.dev"
        }
        prod {
            dimension "env"
            resValue "string", "app_name", "Starter Prod"
            applicationId "com.example.starter.prod"
        }
    }
```

#### Android Build Creation

Run command `flutter build apk --release --flavor $flavor` (replace `$flavor` with `dev`  / `prod` 
for respective environment) from project directory and a release build with respective environment
will be created in `project/build/app/outputs/flutter-apk/` directory with `app-dev-release.apk` or `app-prod-release.apk` filename respectively.

#### iOS Build Creation

Open iOS workspace in xcode. Select `dev` / `prod` scheme in xcode for respective environment.
Create archive for selected scheme. Sign app with adhoc and export to any directory.

### Libraries & Tools Used

* [Cupertino Icons](https://github.com/flutter/packages/tree/master/third_party/packages/cupertino_icons)
* [Get](https://github.com/jonataslaw/getx)
* [HTTP](https://github.com/dart-lang/http/tree/master/pkgs/http)
* [GetStorage](https://github.com/jonataslaw/get_storage)
* [Flutter_dotenv](https://github.com/java-james/flutter_dotenv)

### Folder Structure
Here is the core folder structure which flutter provides.

```
starter-project/
    |- android/
    |- assets/
    |- build/
    |- ios/
    |- lib/
    |- test/
```

Here is the folder structure we have been using in this project

```
lib/
    |- data/
    |- models/
    |- repositories/
    |- res/
    |- view_models/
    |- views/
    |- main.dart
```

```
1- data - Server & local database requests, responses and exceptions handling are done in this directory.
2- models - All models for data parsing are done in this directory.
3- repositories - All connections between data and models are done in this directory.
4- res - All constant and reusable data is placed in this directory.
5- view_model - All the business logics for the views are done in this directory.
6- views - All the screens UI are created in this directory.
7- main.dart - This is the starting point of the application. All the application level
initializations are done in this file i.e theme, routes, title, orientation etc.
```

Now, lets dive into the folder structure.

### data

This directory contains all the API level files used to define each API call.

```
data/
    |- network/
    |- response/
    |- api_exceptions.dart/
```

```
1- network - All the API level files are defined in this directory.
2- response - All the network API level responses are defined in this directory.
3- api_exceptions.dart - All the network API level exceptions are handled in this directory.
```

### models

This directory contains all the models of your application. Each model contains its parsing information and methods.

```
models/
    |- login_model/
        |- login_model.dart
    |- user_model/
        | - users_model.dart
    |- ...
```

```
1- login_model - Contains the parsing information and methods for Login API.
2- user_model - Contains the parsing information and methods for Users API.
```

### repositories

This directory contains all the repositories for the all the data coming from the apis of your application. All the data caching is performed in these files.

```
repositories/
    |- home_repository/
        |- home_repository.dart
    |- login_repository/
        | - login_repository.dart
    |- ...
```

```
1- home_repository - Contains all the repositories for data coming from the Users API on home screen.
2- login_repository - Contains all the repositories for data coming from the Login API on login screen.
```

### res

This directory contains all the repositories for the all the data coming from the apis of your application. All the data caching is performed in these files. This directory contains the constants for `routes`, `localization`, `api endpoints`, `themes` and `strings` etc.

```
res/
    |- components/
        |- general_exception_widget.dart
        |- internet_exception_widget.dart
        |- rounded_button.dart
        |- textfield_widget.dart
    |- consts/
        |- app_url.dart
        |- colors.dart
        |- environments.dart
        |- fonts.dart
        |- ...
    |- localization/
        | - languages.dart
    |- routes/
        | - routes_name.dart
        | - routes.dart
    |- utils/
        | - utils.dart
```

```
1- components - Contains all the reusable widgets in your application.
2- consts - Contains all the constant values in your application.
3- localization - Contains localization file for multi language in your application.
4- routes - Contains all the routes and navigation files in your application.
5- utils - Contains all the commonly used methods in your application. 
```

### view_models

All the business logic of your application will go into this directory. The communication between UI and logic is handled by using GetXControllers.

```
view_models/
    |- home_view_model/
        |- home_view_model.dart
    |- login_view_model/
        |- login_view_model.dart
    |- services/
        |- splash_services.dart
    |- user_preferences/
```

```
1- home_view_model - All the logic part of home screen is done in this directory.
2- login_view_model - All the logic part of login screen is done in this directory.
3- services - It contains the logic for redirecting user to login screen or home screen from splash
screen depending on its session.
4- user_preferences - Contains all the logic to get, store and remove the user login session.

```


### views
This directory contains all the ui of your application. Each screen is located in a separate folder making it easy to combine group of files related to that particular screen.

```
views/
    |- home_screen/
        |- home_screen.dart
    |- login_screen/
        |- login_screen.dart/
    |- splash_screen/
        |- splash_screen.dart/
    |- ...
```

```
1- home_screen - All the code for home screen UI is done in this directory.
2- login_screen - All the code for login screen UI is done in this directory.
3- splash_screen - All the code for splash screen UI is done in this directory.

```
