import '../models/login.dart';

class AuthenticatorService {
  static Login user = Login.empty;

  static Future<Login> createUser(String email, String password) async {
    // check login being stored on device
    var login = Login.empty;

    if (!Login.exists(login)) {
      var cloud = await _createOneDriveToken(email, password);
      login = Login(email, password, cloud);
    }

    user = login;

    return login;
  }

  static Future<String> _createOneDriveToken(
      String email, String password) async {
    return Future.sync(() => 'onedrivetokenonedrivekeytokenkey');
  }
}
