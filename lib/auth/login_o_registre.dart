import 'package:flutter/material.dart';
import 'package:flutter_firebase_2324/pantallas/login.dart';
import 'package:flutter_firebase_2324/pantallas/registre.dart';

class LoginORegistre extends StatefulWidget {
  const LoginORegistre({super.key});

  @override
  State<LoginORegistre> createState() => _LoginORegistreState();
}

class _LoginORegistreState extends State<LoginORegistre> {

void intercanviarPaginesLoginRegistre(){
  setState(() {
    mostrarPaginaLogin = !mostrarPaginaLogin;
  });
}

  bool mostrarPaginaLogin = true;
  @override
  Widget build(BuildContext context) {

    if(mostrarPaginaLogin){
      return PaginaLogin(alFerClic: intercanviarPaginesLoginRegistre,);
    }
    return PaginaRegistre(alFerClic: intercanviarPaginesLoginRegistre,);
  }
}