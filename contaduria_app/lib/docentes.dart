import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'semestres.dart';
import 'login.dart';
import 'materias.dart';

class Docentes extends StatefulWidget {
  const Docentes({super.key});

  @override
  State<Docentes> createState() => _DocentesState();
}

class _DocentesState extends State<Docentes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 128, 248, 0.973),
      appBar: AppBar(
        title: Text("Docente"),
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menú',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Semestres'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => semestres()));
              },
            ),
            ListTile(
              title: Text('Materias'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => materias()));
              },
            ),
            ListTile(
              title: Text('Opción 3'),
              onTap: () {
                // Acción cuando se toque la opción 3
              },
            ),
          ],
        ),
      ),
      body: Center(
        // Color de fondo del card (caja)
        child: ElevatedButton(
            child: Text('Materias'),
            onPressed: () => {
                  // Función que se ejecutará cuando se haga clic en el botón
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => materias()))
                }),
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
