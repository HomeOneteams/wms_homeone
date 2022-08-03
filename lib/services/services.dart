import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:wms_homeone/services/format.dart';

import '../components/dialog_error.dart';
import '../components/loading.dart';
import '../components/show_dialog.dart';

enum HttpRequest { GET, POST, PUT, DELETE }

var headers = {'Content-Type': 'application/json'};

class ServiceHttpMethod {
  static Future<LuffyReponse> httpMethod(
      {required String url,
      required BuildContext context,
      Map<String, String>? header,
      required HttpRequest request,
      Map<String, dynamic>? body}) async {
    onePiceDialogLoading(context: context, subtitle: const Loading());
    try {
      http.Response response = await xMen(url: url, request: request);
      return LuffyReponse(
          false,
          response,
          'No Internet connection',
          ResponseType.MAP,
          LuffyFormating.onePiceDateFormat(
              number: DateTime.now().toIso8601String()));
    } on SocketException {
      showAlertErrorHttp(context, "No Internet connection 😑");
      return LuffyReponse(
          false,
          null,
          'No Internet connection',
          ResponseType.MAP,
          LuffyFormating.onePiceDateFormat(
              number: DateTime.now().toIso8601String()));
    } on HttpException {
      showAlertErrorHttp(context, "Couldn't find the post 😱");
      return LuffyReponse(
          false,
          null,
          "Couldn't find the post",
          ResponseType.MAP,
          LuffyFormating.onePiceDateFormat(
              number: DateTime.now().toIso8601String()));
    } on FormatException {
      showAlertErrorHttp(context, "Bad response format 👎");
      return LuffyReponse(
          false,
          null,
          'Bad response format',
          ResponseType.MAP,
          LuffyFormating.onePiceDateFormat(
              number: DateTime.now().toIso8601String()));
    }
  }
}

Future<http.Response> xMen(
    {required String url,
    Map<String, String>? header,
    required HttpRequest request,
    Map<String, dynamic>? body}) async {
  Uri uri = Uri.parse(url);
  if (request == HttpRequest.GET) {
    http.Response response = await http.get(uri, headers: header ?? headers);
    return response;
  } else if (request == HttpRequest.POST) {
    http.Response response =
        await http.post(uri, headers: header ?? headers, body: body);
    return response;
  } else if (request == HttpRequest.PUT) {
    http.Response response =
        await http.put(uri, headers: header ?? headers, body: body);
    return response;
  } else if (request == HttpRequest.DELETE) {
    http.Response response =
        await http.delete(uri, headers: header ?? headers, body: body);
    return response;
  } else {
    http.Response response = await http.get(uri, headers: header ?? headers);
    return response;
  }
}

String returnResponse(http.Response response) {
  switch (response.statusCode) {
    case 400:
      return '400 Bad Request';
    case 401:
      return '401 Unauthorized';
    case 403:
      return '403 Forbidden errors';
    case 500:
      return '500 Internal Server Error';
    default:
      return 'Error occured while Communication with Server with StatusCode : ${response.statusCode}';
  }
}

class LuffyReponse {
  bool status;
  dynamic error;
  dynamic body;
  ResponseType type;
  String time;
  LuffyReponse(this.status, this.body, this.error, this.type, this.time);
}

enum ResponseType { MAP, List }
