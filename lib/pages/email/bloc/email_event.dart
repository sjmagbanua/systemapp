abstract class EmailEvent {
  const EmailEvent();
}

class EmailChanged extends EmailEvent {
  final String value;
  const EmailChanged(this.value);
}

class PasswordChanged extends EmailEvent {
  final String password;
  const PasswordChanged(this.password);
}

class LoginPressed extends EmailEvent {
  final String text;
  const LoginPressed(this.text);
}
