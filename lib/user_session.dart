import 'package:shared_preferences/shared_preferences.dart';



const String _loginTokenKey = "login-token";
const String _loginRefreshTokenKey = "refresh-token";
const String _loginExpiryTime = "expiry_time";
const String _fcmTokenKey = "fcm-token";
const String _email = "user-email";
const String _password = "user-password";
const String _userId = "user-id";

class UserSession {

  static String? accessToken;
  static String? userId;
  static String? refreshToken;
  static DateTime? expiryTime;
  static String? email;
  static String? password;

  static Future<void> persistLoginToken({accessToken,refreshToken,expiresIn,userId}) async {
    DateTime expiryTime = DateTime.now().add(Duration(seconds: expiresIn));
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(_loginTokenKey, accessToken);
    sharedPreferences.setString(_loginRefreshTokenKey, refreshToken);
    sharedPreferences.setString(_loginExpiryTime, expiryTime.toString());
    sharedPreferences.setString(_userId, userId);
    UserSession.accessToken=accessToken;
    UserSession.refreshToken=refreshToken;
    UserSession.expiryTime = expiryTime;
    UserSession.userId = userId;
  }

  static Future<void> saveLoginCredential({email,password}) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(_email, email);
    sharedPreferences.setString(_password, password);
    UserSession.email=email;
    UserSession.password=password;
  }

  static Future<dynamic> getLoginCredential() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    email = sharedPreferences.get(_email);
    password = sharedPreferences.get(_password);
    return [email,password];
  }

  static Future<dynamic> getAccessToken() async {
    if(accessToken==null) {
      SharedPreferences sharedPreferences = await SharedPreferences
          .getInstance();
      accessToken = await sharedPreferences.get(_loginTokenKey);
    }
    return accessToken;
  }

  static Future<dynamic> getUserId() async {
    if(userId==null) {
      SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      userId = await sharedPreferences.get(_userId);
    }
    return userId;
  }

  static Future<dynamic> getRefreshTokenToken() async {
    if(refreshToken==null) {
      SharedPreferences sharedPreferences = await SharedPreferences
          .getInstance();
      refreshToken = sharedPreferences.get(_loginRefreshTokenKey);
    }
    return refreshToken;
  }
  static Future<dynamic> getExpiryTime() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    expiryTime = DateTime.parse(sharedPreferences.get(_loginExpiryTime));
    return expiryTime;
  }


  static Future<void> deleteLoginToken() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.remove(_loginTokenKey);
  }

  static Future<void> logout() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.remove("login-token");
    sharedPreferences.remove("expiry_time");
    sharedPreferences.remove("fcm-token");
  }


}