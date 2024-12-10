abstract class EmailEvent {
  EmailEvent();
}


class EmailChanged extends EmailEvent{
  final String value;
   EmailChanged(this.value);
}