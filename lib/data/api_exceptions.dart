class ApiExceptions implements Exception {
  final dynamic _message;
  final dynamic _prefix;

  ApiExceptions([this._message, this._prefix]);

  @override
  String toString() {
    return "$_prefix $_message";
  }
}

class InternetException extends ApiExceptions {
  InternetException([String? message]) : super(message, "No internet");
}

class RequestTimeOut extends ApiExceptions {
  RequestTimeOut([String? message]) : super(message, "Request timeout");
}

class ServerException extends ApiExceptions {
  ServerException([String? message]) : super(message, "Internal server error");
}

class InvalidUrlException extends ApiExceptions {
  InvalidUrlException([String? message]) : super(message, "Invalid URL");
}

class FetchDataException extends ApiExceptions {
  FetchDataException([String? message]) : super(message, "Failed to fetch data");
}
