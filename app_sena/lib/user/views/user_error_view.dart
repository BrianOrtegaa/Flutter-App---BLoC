import 'package:flutter/material.dart';

class UserErrorView extends StatelessWidget {
  final String message;

  const UserErrorView({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Text("Error: $message", style: const TextStyle(color: Colors.red));
  }
}
