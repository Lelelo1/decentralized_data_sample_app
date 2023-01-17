import '../models/login.dart';

class AuthenticatorService {
  AuthenticatorService._();
  static final AuthenticatorService _authenticatorService =
      AuthenticatorService._();
  static AuthenticatorService get instance => _authenticatorService;

  //
  Future<Login> createUser(String email, String password) async {
    // check login being stored on device
    var login = Login.empty;

    if (Login.isEmpty(login)) {
      var cloud = await createOneDriveToken(email, password);
      login = Login(email, password, cloud);
    }

    return login;
  }

  Future<String> createOneDriveToken(String email, String password) async {
    return Future.sync(() => 'onedrivetokenonedrivekeytokenkey');
  }
}
