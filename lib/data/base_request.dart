import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop_app/main.dart';

enum RequestType { GET, POST, PUT, DELETE }

class BaseRequest {
  static const _domain = 'https://store.mreslam.net/api/';

  // kDebugMode
  static var _errorMsg = 'Something went wrong';
  static String? _cookie;
  static final Dio _dio = Dio(
    BaseOptions(
      baseUrl: _domain,
      // will not throw errors
      validateStatus: (status) => true,
      followRedirects: true,
      // validateStatus: (status) => status! < 500,
    ),
  );

  static Future<dynamic> dynamicRequest({
    required String path,
    RequestType requestType = RequestType.GET,
    dynamic body,
    Map<String, dynamic>? parms,
    bool useAuth = true,
    bool showDialog = false,
    bool showResponse = false,
  }) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      //log request
      _cookie = prefs.getString('token');
      // "$_domain$path -{$_cookie}".printLog();

      final response = await _dio.request(
        path,
        data: body,
        queryParameters: parms,
        options: Options(
          method: requestType.name,
          headers: {
            if (_cookie != null && useAuth) 'Authorization': 'Bearer $_cookie',
            "Accept": "application/json",
            "Content-Type": "application/json"
          },
        ),
      );

      if (showResponse) {
        log(response.statusCode.toString());
        log(response.data.toString());
      }

      if (!(response.statusCode! >= 200 && response.statusCode! <= 299)) {
        if (response.data["message"] != null) {
          throw Exception(response.data["message"]);
        } else {
          throw Exception('Server Error | Code : ${response.statusCode}');
        }
      }
      // if (response.statusCode != 200) {
      //   if (response.data["message"] != null) {
      //     throw Exception(response.data["message"]);
      //   } else {
      //     throw Exception('Server Error | Code : ${response.statusCode}');
      //   }
      // }

      // if (response.data["error"] == true) {
      //   throw Exception(response.data["message"]);
      // }

      return response.data;
    } on DioException catch (err, stackTrace) {
      log('error:$err');

      log('Stack Trace:$stackTrace');

      if (err.message != null) _errorMsg = err.message!;
      // showErrorToast(_errorMsg);
      showToast(_errorMsg);
    } catch (err, stackTrace) {
      log(">>>>>>>>>>>>>START>>>>>>>>>>>>>>");
      log("<<<<<<<<<<<<END<<<<<<<<<<<<<");
      log('error:$err');
      log('Stack Trace:$stackTrace');
      showToast(err.toString());
    }

    return;
  }
}
