import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:rest_api/data/app_exceptions.dart';
import 'package:rest_api/data/network/base_api_service.dart';

import 'package:http/http.dart' as http;

class NetworkApiService extends BaseApiService {
  @override
  Future getApi(String url) async {
    dynamic jsonResponse;

    try {
      final response = await http.get(Uri.parse(url)).timeout(
            const Duration(seconds: 10),
          );
      jsonResponse = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on TimeoutException {
      throw TimeoutException('');
    }
    return jsonResponse;
  }

  @override
  Future postApi(var data, String url) async {
    dynamic jsonResponse;

    try {
      final response =
          await http.post(Uri.parse(url), body: jsonEncode(data)).timeout(
                const Duration(seconds: 10),
              );
      jsonResponse = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on TimeoutException {
      throw TimeoutException('');
    }
    return jsonResponse;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;
      case 400:
        throw InvalidUrlException();
      default:
        throw FetchDataException(
          // ignore: prefer_interpolation_to_compose_strings
          'Error while communicating with server' +
              response.statusCode.toString(),
        );
    }
  }
}
