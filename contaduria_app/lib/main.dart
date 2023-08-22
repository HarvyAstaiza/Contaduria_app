import 'package:contaduria_app/Vistas/Temas.dart';
import 'package:contaduria_app/Vistas/Tematica.dart';
import 'package:contaduria_app/Vistas/docentes.dart';
import 'package:contaduria_app/Vistas/lista_materias.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Vistas/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}



class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue[900],
      ),
      home:  Temas(),
    );
  }
}