import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:contaduria_app/Modelo/Model_Materia.dart';
import 'package:contaduria_app/Vistas/Tematica.dart';
import 'lista_materias.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Docentes extends StatefulWidget {
  // El ID del docente por el que deseas filtrar

  const Docentes({super.key});

  @override
  State<Docentes> createState() => _DocentesState();
}

class _DocentesState extends State<Docentes> {
  String docenteId = '';
  final User user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 128, 248, 0.973),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              logout(context);
            },
            icon: Icon(
              Icons.logout,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromRGBO(0, 87, 144, 1),
                  Color.fromRGBO(0, 180, 165, 1)
                ],
              )),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Container(
                  margin: EdgeInsets.all(50),
                  child: Form(
                    child: Column(
                      children: [
                        Icon(Icons.person),
                        Text(
                          "Hola Profe",
                          style: TextStyle(fontFamily: 'Gotham_Bold'),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        ElevatedButton(
                            child: Text('Materias'),
                            onPressed: () async {
                              // Obtener el ID de docente desde Firebase Firestore
                              // Obtener la referencia del docente desde Firebase Firestore
                              DocumentReference docenteRef = FirebaseFirestore
                                  .instance
                                  .collection('docentes')
                                  .doc(user.uid);
                              // Función que se ejecutará cuando se haga clic en el botón
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => listamaterias(
                                            
                                          )));
                              print(docenteId);
                            }),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> logout(BuildContext context) async {
    CircularProgressIndicator();
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
  }
}
