import 'package:flutter/material.dart';
import '../widgets/task_card.dart';

class TaskSuccessView extends StatelessWidget {
  const TaskSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TaskCard(
          title: "Comprar",
          subtitle: "Ir al Ara",
        ),
        SizedBox(height: 12),
        TaskCard(
          title: "Transito",
          subtitle: "Tramite",
        ),
      ],
    );
  }
}
