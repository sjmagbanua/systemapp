abstract class HomeEvent {
  const HomeEvent();
}

class OnSelectedDay extends HomeEvent{
  final DateTime selectedDay;
  const OnSelectedDay(this.selectedDay);
}

class OnPageChanged extends HomeEvent{
  final DateTime onPageChanged;
  const OnPageChanged(this.onPageChanged);
}