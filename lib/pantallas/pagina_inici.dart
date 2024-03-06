import 'package:flutter/material.dart';
import 'package:flutter_firebase_2324/auth/servei_auth.dart';

class PaginaInici extends StatelessWidget {
  const PaginaInici({super.key});

  void LogOut(){
    final serveiAuth = ServeiAuth();
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Pagina Inicial"),
      actions: [
        IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    ),
  );
}
}