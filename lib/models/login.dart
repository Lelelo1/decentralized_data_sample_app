class Login {
  String email;
  String password;
  String personalCloudKey;
  Login(this.email, this.password, this.personalCloudKey);

  static Login get empty => Login('', '', '');
  static bool exists(Login login) =>
      login.email != empty.email &&
      login.password != empty.password &&
      login.personalCloudKey != empty.personalCloudKey;
}
