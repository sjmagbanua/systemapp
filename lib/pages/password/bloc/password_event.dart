abstract class PasswordEvent {
  const PasswordEvent();
}

class PasswordChanged extends PasswordEvent{
  final String value;
 const PasswordChanged(this.value);
}