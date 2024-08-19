import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop_app/data/base_request.dart';
import 'package:shop_app/data/models/user.dart';
import 'package:shop_app/index.dart';

class UserRepo {
  static Future<User?> register(User user, String password) async {
    final response = await BaseRequest.dynamicRequest(
        path: ApiPaths.registerUrl,
        requestType: RequestType.POST,
        body: {
          'name': user.name,
          'email': user.email,
          'password': password,
        });

    if (response == null || response['success'] == false) return null;
    if (response['user'] == null) return null;
    if (response['token'] == null) return null;

    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setString('token', response['token']);

    return User.fromJson(response['user']);
  } //login

  static Future<User?> login(String email, String password) async {
    final response = await BaseRequest.dynamicRequest(
        path: ApiPaths.loginURL,
        requestType: RequestType.POST,
        body: {
          'email': email,
          'password': password,
        });

    if (response == null || response['success'] == false) return null;
    if (response['user'] == null) return null;
    if (response['token'] == null) return null;

    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setString('token', response['token']);

    return User.fromJson(response['user']);
  }
}
