import 'package:dio/dio.dart';

class AuthService {
  static String accessToken = "";
  static Future<bool> login({
    required String email,
    required String password,
  }) async {
    try {
      var response = await Dio().post(
        "https://capekngoding.com/deny/api/auth/action/login",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: {
          "email": email,
          "password": password,
        },
      );
      Map obj = response.data;
      AuthService.accessToken = obj["data"]["token"];
      // return obj["success"] == true ? true : false;
      return obj["success"];
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
