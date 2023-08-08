import 'package:flutter/material.dart';

class semestres extends StatelessWidget {
  const semestres({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Semestres'),
      ),
      body: Container(
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(8), // Bordes redondeados de la tarjeta
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromRGBO(0, 87, 144, 1),
                  Color.fromRGBO(0, 180, 165, 1)
                ], // Colores del degradado
              ),
            ),
            width: 800,
            height: 850,
            padding: EdgeInsets.all(16), // Espacio interno dentro de la tarjeta
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Acción del primer botón
                    print('1 botón presionado');
                  },
                  style: TextButton.styleFrom(
                      textStyle: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Raleway',
                      ),
                      backgroundColor: Colors.transparent, // Fondo transparente

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                        side: BorderSide(color: Colors.white, width: 2.0),
                      )),
                  child: Text('I Semestre'),
                ),
                SizedBox(height: 10), // Espacio entre botones
                ElevatedButton(
                  onPressed: () {
                    // Acción del segundo botón
                    print('2 botón presionado');
                  },
                  style: TextButton.styleFrom(
                      textStyle: TextStyle(fontSize: 17),
                      backgroundColor: Colors.transparent, // Fondo transparente
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                        side: BorderSide(color: Colors.white, width: 2.0),
                      )),
                  child: Text('II Semestre'),
                ),
                SizedBox(height: 10), // Espacio entre botones
                ElevatedButton(
                  onPressed: () {
                    // Acción del primer botón
                    print('3 botón presionado');
                  },
                  style: TextButton.styleFrom(
                      textStyle: TextStyle(fontSize: 17),
                      backgroundColor: Colors.transparent, // Fondo transparente
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                        side: BorderSide(color: Colors.white, width: 2.0),
                      )),
                  child: Text('III Semestre'),
                ),
                SizedBox(height: 10), // Espacio entre botones
                ElevatedButton(
                  onPressed: () {
                    // Acción del segundo botón
                    print('4 botón presionado');
                  },
                  style: TextButton.styleFrom(
                      textStyle: TextStyle(fontSize: 17),
                      backgroundColor: Colors.transparent, // Fondo transparente
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                        side: BorderSide(color: Colors.white, width: 2.0),
                      )),
                  child: Text('IV Semestre'),
                ),
                SizedBox(height: 10), // Espacio entre botones
                ElevatedButton(
                  onPressed: () {
                    // Acción del primer botón
                    print('5 botón presionado');
                  },
                  style: TextButton.styleFrom(
                      textStyle: TextStyle(fontSize: 17),
                      backgroundColor: Colors.transparent, // Fondo transparente
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                        side: BorderSide(color: Colors.white, width: 2.0),
                      )),
                  child: Text('V Semestre'),
                ),
                SizedBox(height: 16), // Espacio entre botones
                ElevatedButton(
                  onPressed: () {
                    // Acción del segundo botón
                    print('6 botón presionado');
                  },
                  style: TextButton.styleFrom(
                      textStyle: TextStyle(fontSize: 17),
                      backgroundColor: Colors.transparent, // Fondo transparente
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                        side: BorderSide(color: Colors.white, width: 2.0),
                      )),
                  child: Text('VI Semestre'),
                ),
                SizedBox(height: 10), // Espacio entre botones
                ElevatedButton(
                  onPressed: () {
                    // Acción del primer botón
                    print('7 botón presionado');
                  },
                  style: TextButton.styleFrom(
                      textStyle: TextStyle(fontSize: 17),
                      backgroundColor: Colors.transparent, // Fondo transparente
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                        side: BorderSide(color: Colors.white, width: 2.0),
                      )),
                  child: Text('VII Semestre'),
                ),
                SizedBox(height: 10), // Espacio entre botones
                ElevatedButton(
                  onPressed: () {
                    // Acción del segundo botón
                    print('8 botón presionado');
                  },
                  style: TextButton.styleFrom(
                      textStyle: TextStyle(fontSize: 17),
                      backgroundColor: Colors.transparent, // Fondo transparente
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                        side: BorderSide(color: Colors.white, width: 2.0),
                      )),
                  child: Text('VIII Semestre'),
                ),
                SizedBox(height: 10), // Espacio entre botones
                ElevatedButton(
                  onPressed: () {
                    // Acción del primer botón
                    print('9 botón presionado');
                  },
                  style: TextButton.styleFrom(
                      textStyle: TextStyle(fontSize: 17),
                      backgroundColor: Colors.transparent, // Fondo transparente
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                        side: BorderSide(color: Colors.white, width: 2.0),
                      )),
                  child: Text('IX Semestre'),
                ),
                SizedBox(height: 10), // Espacio entre botones
                ElevatedButton(
                  onPressed: () {
                    // Acción del segundo botón
                    print('10 botón presionado');
                  },
                  style: TextButton.styleFrom(
                      textStyle: TextStyle(fontSize: 17),
                      backgroundColor: Colors.transparent, // Fondo transparente
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                        side: BorderSide(color: Colors.white, width: 2.0),
                      )),
                  child: Text('X Semestre'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
