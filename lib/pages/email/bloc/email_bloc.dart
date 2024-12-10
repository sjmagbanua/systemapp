
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:systemapp/models/models.dart';

import 'bloc.dart';

class EmailBloc extends Bloc<EmailEvent, EmailState> {
  EmailBloc({
    required EmailState initialState,
  }) : super(initialState) {
    on<EmailChanged>(_emailChanged);
    on<ProductsScreenCreated>(_productScreenCreated);

  }

  void _emailChanged(EmailChanged event, Emitter<EmailState> emit) {
    var email = event.value;
    var errorType = ErrorType.empty;

    if (email.isEmpty) {
      errorType = ErrorType.empty;
    } else if (!RegExp(
            r'^(([^<>()[\]\\.,;:\s@\“]+(\.[^<>()[\]\\.,;:\s@\“]+)*)|(\“.+\“))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
            caseSensitive: false)
        .hasMatch(email)) {
      errorType = ErrorType.format;
    } else {
      errorType = ErrorType.none;
    }
    emit(
      state.copyWith.email(
        value: email,
        errorType: errorType,
      ),
    );
  }

  void _productScreenCreated(ProductsScreenCreated event, Emitter<EmailState> emit){
    
  }
}
