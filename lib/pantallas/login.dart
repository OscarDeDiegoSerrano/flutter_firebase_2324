import 'package:flutter/material.dart';
import 'package:flutter_firebase_2324/componentes/boto_auth.dart';
import 'package:flutter_firebase_2324/componentes/textfield_auth.dart';

class PaginaLogin extends StatefulWidget {
  const PaginaLogin({super.key});

  @override
  State<PaginaLogin> createState() => _PaginaLoginState();
}

class _PaginaLoginState extends State<PaginaLogin> {

  final TextEditingController controllerEmail = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 183, 159),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
            //Logo
            const Icon(
              Icons.fireplace,
              size: 120,
              color: Color.fromARGB(255, 255, 240, 218),
            ),

            SizedBox(height: 25,),
        
            //Frase
            const Text(
              "Benvingut/da de nou",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 240, 218),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 25,),
        
            //Text divisori
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      color: Color.fromARGB(255, 255, 240, 218),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8,),
                    child: Text(
                      "Fes Login",
                      style: TextStyle(color: Color.fromARGB(255, 255, 240, 218)),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      color: Color.fromARGB(255, 255, 240, 218),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25,),
            
            //TextField Email
            TextFieldAuth(
              controller: controllerEmail, 
              obscureText: false, 
              hintText: "Email",
            ),
        
            //TextField Password
            TextFieldAuth(
              controller: controllerPassword, 
              obscureText: true, 
              hintText: "Password",
            ),
            //No estas registrat
            SizedBox(height: 25,),

            //No estas registrat/da?
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("No ets membre?"),
                  SizedBox(width: 5,),
                  GestureDetector(

                  )
                  Text("Registra't",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                  ),
                  ),
                ],
              ),
            ),

            //Boto Login
            const Boto_Auth(),
          ]
          ),
      ),
    );
  }
}