import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_starter_project/data/api_exceptions.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_starter_project/data/network/base_api_services.dart';

class ApiServices extends BaseApiServices {
  @override
  Future getApi(String url) async {
    if (kDebugMode) {
      log(url);
    }
    dynamic jsonRes;

    try {
      final response = await http.get(Uri.parse(url)).timeout(const Duration(seconds: 20));

      jsonRes = await returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on TimeoutException {
      throw RequestTimeOut();
    }

    return jsonRes;
  }

  @override
  Future postApi(var data, String url) async {
    if (kDebugMode) {
      log(url);
      print(data);
    }

    dynamic jsonRes;

    try {
      final response = await http.post(Uri.parse(url), body: data).timeout(const Duration(seconds: 20));

      jsonRes = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on TimeoutException {
      throw RequestTimeOut();
    }

    return jsonRes;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic data = jsonDecode(response.body);
        return data;

      case 400:
        dynamic data = jsonDecode(response.body);
        return data;

      default:
        throw FetchDataException("Error while communicating with server${response.statusCode}");
    }
  }
}
