import 'package:flutter/material.dart';
import '../widgets/task_card.dart';

class TaskInitialView extends StatelessWidget {
  const TaskInitialView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TaskCard(title: "Título de la tarea", subtitle: "Subtitulo de la Tarea"),
        SizedBox(height: 12),
        TaskCard(title: "Título de la tarea", subtitle: "Subtitulo de la Tarea"),
      ],
    );
  }
}
