import 'package:flutter/material.dart';

class UserInitialView extends StatelessWidget {
  const UserInitialView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // 🔹 hace que ocupe todo el ancho posible
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // 🔹 alinea texto a la izquierda
            children: const [
              Text("Hola,", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text("Contacto:"),
              SizedBox(height: 8),
              Text("Saldo:"),
            ],
          ),
        ),
      ),
    );
  }
}
