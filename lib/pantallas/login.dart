import 'package:flutter/material.dart';
import 'package:flutter_firebase_2324/componentes/boto_auth.dart';
import 'package:flutter_firebase_2324/componentes/textfield_auth.dart';

class PaginaLogin extends StatefulWidget {

  final void Function()? alFerClic;

  const PaginaLogin({
    Key? key,
    required this.alFerClic,
    });

  @override
  State<PaginaLogin> createState() => _PaginaLoginState();
}

class _PaginaLoginState extends State<PaginaLogin> {
  final TextEditingController controllerEmail = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();

  void ferLogin() {
    // Aquí puedes implementar la lógica para iniciar sesión
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 183, 159),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 25),
                // Logo
                Icon(
                  Icons.fireplace,
                  size: 120,
                  color: const Color.fromARGB(255, 255, 240, 218),
                ),
                SizedBox(height: 25),
                // Frase
                Text(
                  "Benvingut/da de nou",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 255, 240, 218),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 25),
                // Text divisori
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 2,
                          color: const Color.fromARGB(255, 255, 240, 218),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          "Fes Login",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 255, 240, 218)),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 2,
                          color: const Color.fromARGB(255, 255, 240, 218),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                // TextField Email
                TextFieldAuth(
                  controller: controllerEmail,
                  obscureText: false,
                  hintText: "Email",
                ),
                // TextField Password
                TextFieldAuth(
                  controller: controllerPassword,
                  obscureText: true,
                  hintText: "Password",
                ),
                // No estas registrat
                SizedBox(height: 25),
                // No estas registrat/da?
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("No ets membre?"),
                      SizedBox(width: 5),
                      GestureDetector(
                        onTap: widget.alFerClic,
                        child: Text(
                          "Registra't",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Boto Login
                Boto_Auth(
                  text: "Login",
                  onTap: ferLogin,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
