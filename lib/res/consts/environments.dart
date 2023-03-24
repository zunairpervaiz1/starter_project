import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

//Environment class handles all the operations to be performed in this app
class Environment {
  static String get filename {
    if (kReleaseMode) {
      return ".env.production";
    }
    return ".env.development";
  }

  static String get appUrl {
    return dotenv.env['API_URL'] ?? "API_URL not found";
  }
}
