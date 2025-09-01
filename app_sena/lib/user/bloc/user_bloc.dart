import 'package:flutter_bloc/flutter_bloc.dart';
import 'user_event.dart';
import 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    on<LoadUser>((event, emit) async {
      emit(UserLoading());
      await Future.delayed(Duration(seconds: 2));
      emit(UserLoaded(
        name: "Carlos",
        email: "usuario@gmail.com",
        balance: 1200,
      ));
    });

    on<FailUser>((event, emit) {
      emit(UserError("❌ Error al cargar usuario"));
    });
  }
}
