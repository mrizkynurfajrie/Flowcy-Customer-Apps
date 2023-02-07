import 'package:get_storage/get_storage.dart';

const String CACHE_USERNAME = "username";
const String CACHE_TOKEN = "token";
const String CHECK_LOGIN = "loginState";
const String CACHE_API_LOGGER = "apilogger";
const String CACHE_USER = "user";

class Api2 {
  final box = GetStorage();

  //username//
  Future setUsername({String? username}) async {
    username ??= "";
    await box.write(CACHE_USERNAME, username);
  }

  Future<String?> getUsername() async {
    return box.read(CACHE_USERNAME);
  }
  //--------//

  //token//
  Future setToken({String? token}) async {
    token ??= "";
    await box.write(CACHE_TOKEN, token);
  }

  Future<String?> getToken() async {
    return box.read(CACHE_TOKEN);
  }
  //--------//

  //api logger//
  Future setApiLogger({dynamic value}) async {
    value ??= "";
    await box.write(CACHE_API_LOGGER, value);
  }

  Future<dynamic> getApiLogger() async {
    return box.read(CACHE_API_LOGGER);
  }

  //user//
  Future setUser({dynamic user}) async {
    user ??= "";
    await box.write(CACHE_USER, user);
  }

  Future<dynamic> getUser() async {
    return box.read(CACHE_USER);
  }
  //--------//

  //login//
  Future setIsLogin({bool? isLogin}) async {
    isLogin ??= false;
    await box.write(CHECK_LOGIN, isLogin);
  }

  Future<bool?> getLoginStatus() async {
    return box.read(CHECK_LOGIN);
  }
  //--------//

  //remove data//
  Future removeData() async {
    await box.remove(CHECK_LOGIN);
    await box.remove(CACHE_USERNAME);
    await box.remove(CACHE_TOKEN);
    await box.remove(CACHE_USER);
  }
}
