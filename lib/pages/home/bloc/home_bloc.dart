
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:systemapp/models/models.dart';
import 'package:systemapp/pages/home/bloc/bloc.dart';
import 'package:systemapp/repositories/repositories.dart';

class HomeBloc extends Bloc<HomeEvent,HomeState>{
  final TodolistRepositories _todolistRepositories;
  HomeBloc({
    required AccountRepository accountRepository,
    required TodolistRepositories todolistRepositories,
    required HomeState initialState,
  }) : 
  _todolistRepositories = todolistRepositories,
  super(initialState){
    on<OnSelectedDay>(_onSelectedDay);
    on<OnPageChanged>(_onPageChanged);
    on<ScreenCreated>(_screenCreated);
    on<TextFormChanged>(_textFormChanged);
    on<AddToDoPressed>(_addTodoPressed);
    // on<UpdateTodoPressed>(_updateTodoPressed);
    on<DeleteTodoPressed>(_deleteTodoPressed);

  }

  void _onSelectedDay(OnSelectedDay event, Emitter<HomeState> emiy){
    var selectedDay = event.selectedDay;
    emit(state.copyWith(selectedDay: selectedDay));
  }

  void _onPageChanged(OnPageChanged event, Emitter<HomeState> emit){
    var onPageChanged = event.onPageChanged;
  }

  void _screenCreated(ScreenCreated event, Emitter<HomeState> emit) async{
    // var accounts = await _accountRepository.accounts();
    var todos = await _todolistRepositories.todos();
    // print('accounts: $accounts');
    // var id = todos.indexOf(element)
    if(todos!.isEmpty){
      print('empty');
    }else{ 
    print('todos: $todos');
    }
    emit(state.copyWith(todos: todos, ));
  }

  void _textFormChanged(TextFormChanged event, Emitter<HomeState> emit ){
     var text = event.text;
    var errorType = ErrorType.empty;
    print('here $text');
    if (text.isEmpty) {
      errorType = ErrorType.empty;
    } else if (!RegExp(
            r'^(([^<>()[\]\\.,;:\s@\“]+(\.[^<>()[\]\\.,;:\s@\“]+)*)|(\“.+\“))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
            caseSensitive: false)
        .hasMatch(text)) {
      errorType = ErrorType.format;
    } else {
      errorType = ErrorType.none;
    }
    emit(state.copyWith.email(
      value: text
    ));
    print('here $text');
  }

  Future<void> _addTodoPressed(
    AddToDoPressed event, Emitter<HomeState> emit) async{
    await _todolistRepositories.add(
      
      email: event.text
    );
    emit(state.copyWith.email(value: event.text));
  }

  // Future<void> _updateTodoPressed(UpdateTodoPressed event, Emitter<HomeState> emit)async{
  //   await _todolistRepositories.update(
  //     email: event.text
  //   );
  //   emit(state.copyWith.email(value: event.text));
  // }

  Future<int?> _deleteTodoPressed(DeleteTodoPressed event, Emitter<HomeState> emit) async{
    await _todolistRepositories.delete(
      id: event.id
    );

    return null;
  }
}
