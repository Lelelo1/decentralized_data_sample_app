class Login {
  String email;
  String password;
  String personalCloudKey;
  Login(this.email, this.password, this.personalCloudKey);

  static Login get _empty => Login('', '', '');
  static bool isEmpty(Login login) =>
      login.email == _empty.email &&
      login.password == _empty.password &&
      login.personalCloudKey == _empty.personalCloudKey;
}
