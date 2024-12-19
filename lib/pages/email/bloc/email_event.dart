abstract class EmailEvent {
 const EmailEvent();
}


class EmailChanged extends EmailEvent{
  final String value;
  const EmailChanged(this.value);
}


class LoginPressed extends EmailEvent{
  final String text;
  const LoginPressed(this.text);
}
