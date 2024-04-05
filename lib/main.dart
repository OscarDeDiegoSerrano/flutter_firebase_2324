import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_2324/auth/portal_auth.dart';
import 'package:flutter_firebase_2324/firebase_options.dart';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PortalAuth(),
    );
  }
}

/*
1) Tenir el Node.js instal·lat.
2) npm install -g firebase-tools
3) Fer login a Firebase: firebase login
    - Si dona error de l'arxiu firebase.ps1, canviar-li el nom (o esborrar-lo
    i tornar a fer login).
    - Si tornem a fer firebase login, ens diu en quin compte estem.
    - Si vulguéssim canviar el compte, fem firebase logout.

4) Fer: dart pub global activate flutterfire_cli
5) Vincular projecte local amb projecte Firebase de la Consola.
    - flutterfire configure

6) Incloure les llibreries de Firebase que vulguem utilitzar.
    - flutter pub add firebase_auth
    - flutter pub add firebase_core

*/

/*
Imatges:
1)Habilitar firebase storage en el projecte vinculat de firebase.
2)Descarreguem dependència de firebase storage al projecte.
  - flutter pub add firebase_storage
3)Descarreguem una dependència per seleccionar imatges, hi ha diversos.
  - image_picker: flutter pub add image_picker
4)Perque funcioni en Android:
  - Anar a android > app >
  Segurament caldrà anar a: android > app > build.gradle.
    - On diu minSdkVersion flutter.mindSdkVersion canviar-ho per: minSdkVersion 21
  Si dona error dient: One or more plugins require a higher Android SDK Version.
6)Perque funcioni a web:
onEntrypointLoaded: function(engineInitializer) {
          engineInitializer.initializeEngine().then(function(appRunner) {
            appRunner.runApp();
          });
        }
*/