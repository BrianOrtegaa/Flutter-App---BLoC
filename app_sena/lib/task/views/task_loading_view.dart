import 'package:flutter/material.dart';

class TaskLoadingView extends StatelessWidget {
  const TaskLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
