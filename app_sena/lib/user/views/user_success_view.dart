import 'package:flutter/material.dart';

class UserSuccessView extends StatelessWidget {
  final String name;
  final String email;
  final double balance;

  const UserSuccessView({
    super.key,
    required this.name,
    required this.email,
    required this.balance,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Hola, $name"),
        Text("Contacto: $email"),
        Text("Saldo: $balance"),
      ],
    );
  }
}
