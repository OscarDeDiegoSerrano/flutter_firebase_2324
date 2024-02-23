import 'package:flutter/material.dart';

class Boto_Auth extends StatelessWidget {
  const Boto_Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 244, 111, 54)
        ),
      padding: EdgeInsets.all(25),
      color: Color.fromARGB(255, 244, 111, 54),
      child: Text(
        "Login",
        style: TextStyle(
          color: Colors.orange,
          fontWeight: FontWeight.bold,
          fontSize: 16,
          
        ),
        ),
    );
  }
}