import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_2324/pantallas/login.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaginaLogin()
    );
  }
}

/*
1. Tenir el Node.js instal·lat.
2. npm install -g firebase-tools.
3. Fer login a Firebase: firebase login
4. Fer: dart pub global activate flutterfire_cli
5. Vincular projecte local amb projecte firebase de la consola.
    - flutterfire configure
6. Incloure les llibreries de Firebas que vulguem utilitzar.
    - flutter pub add firebas_auth
*/