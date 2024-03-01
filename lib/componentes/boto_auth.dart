import 'package:flutter/material.dart';

class Boto_Auth extends StatelessWidget {
  
  
  
  final String text;
  final Function()? onTap;

  const Boto_Auth({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 244, 111, 54)
          ),
        padding: EdgeInsets.all(25),
        child: Text(
          "Login",
          style: const TextStyle(
            color: Colors.orange,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          ),
      ),
    );
  }
}