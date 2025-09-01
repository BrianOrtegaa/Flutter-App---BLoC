import 'package:flutter/material.dart';

class TaskErrorView extends StatelessWidget {
  final String message;

  const TaskErrorView({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Text("Error cargando tareas: $message", style: const TextStyle(color: Colors.red));
  }
}
