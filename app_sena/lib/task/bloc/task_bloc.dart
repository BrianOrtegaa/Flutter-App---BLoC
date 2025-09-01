import 'package:flutter_bloc/flutter_bloc.dart';
import 'task_event.dart';
import 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(TaskInitial()) {
    on<LoadTasks>((event, emit) async {
      emit(TaskLoading());
      await Future.delayed(Duration(seconds: 2));
      emit(TaskLoaded(["Comprar", "Ir al ARA", "Tránsito", "Trámite"]));
    });

    on<FailTasks>((event, emit) {
      emit(TaskError("❌ Error al cargar tareas"));
    });
  }
}
