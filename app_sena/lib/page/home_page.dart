import 'package:app_sena/task/views/task_success_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../user/bloc/user_bloc.dart';
import '../user/bloc/user_state.dart';
import '../task/bloc/task_bloc.dart';
import '../task/bloc/task_state.dart';

import '../user/views/user_initial_view.dart';
import '../task/views/task_initial_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 Usuario: dejamos BlocBuilder pero siempre mostramos el initial
            BlocBuilder<UserBloc, UserState>(
              builder: (context, state) => const UserInitialView(),
            ),

            const SizedBox(height: 20),
            const Text("TAREAS", style: TextStyle(fontWeight: FontWeight.bold)),

            // 🔹 Tareas: idem, solo initial
            BlocBuilder<TaskBloc, TaskState>(
              builder: (context, state) => const TaskInitialView(),
            ),
          ],
        ),
      ),
    );
  }
}
