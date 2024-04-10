import 'dart:io';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditarDadesUsuari extends StatefulWidget {
  const EditarDadesUsuari({super.key});

  @override
  State<EditarDadesUsuari> createState() => _EditarDadesUsuariState();
}

class _EditarDadesUsuariState extends State<EditarDadesUsuari> {

  File? _imatgeSeleccionadaApp;
  Uint8List? _imatgeSeleccionadaWeb;
  bool _imatgeAPuntPerPujar = false;

  Future<void> _triaImatge() async{
    final ImagePicker picker = ImagePicker();
    XFile? Imatge = await picker.pickImage(source: ImageSource.gallery);

    //Si trien i trobem la imatge.
    if (imatge != null) {

      if(!kIsWeb) {
        File arxiuSeleccionat = File(imatge.path);

        _imatgeSeleccionadaApp = arxiuSeleccionat;
        _imatgeAPuntPerPujar = true;
      }

      //Si l'app s'executa en un navegador web
      if(kIsWeb) {
        Uint8List arxiuEnBytes = await imatge.readAsBytes();

        setState(() {
          _imatgeSeleccionadaApp = arxiuEnBytes;
          _imatgeAPuntPerPujar = true;
        }
        )
      }

    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Editar dades"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Botó per obrir el FilePicker.
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue[400]
                  ),
                  child: const Text("Tria imatge"),
                )
              ),

              //Botó per pujar la imatge seleccionada amb FilePicker.

              //Visor del resultat del FilePicker.

              //Visor del resultat de carregar la imatge de Firebase Storage.
            ],
          ),
        )
      ),
    );
  }
}