
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:systemapp/pages/home/bloc/bloc.dart';

class HomeBloc extends Bloc<HomeEvent,HomeState>{
  HomeBloc({
    required HomeState initialState,
  }) : super(initialState){
    on<OnSelectedDay>(_onSelectedDay);
    on<OnPageChanged>(_onPageChanged);
  }

  void _onSelectedDay(OnSelectedDay event, Emitter<HomeState> emiy){
    var selectedDay = event.selectedDay;
    print('bloc: $selectedDay');
    emit(state.copyWith(selectedDay: selectedDay));
  }

  void _onPageChanged(OnPageChanged event, Emitter<HomeState> emit){
    var onPageChanged = event.onPageChanged;
  }
}

