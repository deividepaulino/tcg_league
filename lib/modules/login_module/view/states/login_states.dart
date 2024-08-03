sealed class LoginStates {}

class LoginLoadingState extends LoginStates {}

class LoginInitialState extends LoginStates {}

class LoginSuccessState extends LoginStates {
  final String token;

  LoginSuccessState(this.token);
}

class LoginErrorState extends LoginStates {
  final String message;

  LoginErrorState(this.message);
}
