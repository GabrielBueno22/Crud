abstract class UserSignUp {
  Future<void> userSignUp(SignUpParams params);
}

class SignUpParams {
  final String userName;
  final String password;

  SignUpParams(this.userName, this.password);
}
