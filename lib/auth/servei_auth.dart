import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ServeiAuth{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //Fer Login
  Future<UserCredential> loginEmailPassword(String email, password) async{
    
    try{
      UserCredential cerdencialUsuari = await _auth.signInWithEmailAndPassword(
        email: email, 
        password: password
    );

    _firestore.collection("Usuaris").doc(cerdencialUsuari.user!.uid).set({
      "uid": cerdencialUsuari.user!.uid,
      "email": email,
      "parametreX": "Hola",
    });

    return cerdencialUsuari;
    }on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
    
  }

  //Fer registre
  Future<UserCredential> registreEmailPassword(String email, password) async{
    
    try{
      UserCredential cerdencialUsuari = await _auth.createUserWithEmailAndPassword(
        email: email, 
        password: password
    );
    return cerdencialUsuari;
    }on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
    
  }


  //Fer Logout
  Future<void> tancarSessio() async {
    return await _auth.signOut();
  }
}