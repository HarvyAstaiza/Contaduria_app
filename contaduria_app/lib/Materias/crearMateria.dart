import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class CreateMateriaPage extends StatefulWidget {
  @override
  CrearMateriaPage createState() => CrearMateriaPage();
}

class CrearMateriaPage extends State<CreateMateriaPage> {
  
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors:[
                    Color.fromRGBO(0, 87, 144, 1),
                    Color.fromRGBO(0, 180, 165, 1)],
                )
              ),
        child: Column(
          children: <Widget>[
            Container(              
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Container(
                  margin: EdgeInsets.all(50),
                  child: Form(
                    
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/fup_logo_clasico.png'
                          ,color: Colors.white,width: 150,height: 150,),
                        SizedBox(
                          height:55,
                        ),
                        TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            filled: true,
                            prefixIcon: Icon(Icons.group),
                            fillColor: Colors.white.withOpacity(0.3),
                            hintText: 'Usuario',
                            enabled: true,
                            contentPadding: const EdgeInsets.only(
                                left: 30.0, bottom: 8.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: new BorderSide(
                                  width: 5,
                                  color: Color.fromARGB(248, 255, 255, 255)),
                              borderRadius: new BorderRadius.circular(18),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: new BorderSide(
                                  width: 3,
                                  color: Color.fromARGB(248, 253, 253, 253)),
                              borderRadius: new BorderRadius.circular(18),
                            ),
                          ),
                          validator: (value) {
                            if (value!.length == 0) {
                              return "Campo de Usuario Vacio ";
                            }
                            if (!RegExp(
                                    "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                .hasMatch(value)) {
                              return ("Usuario Invalido");
                            } else {
                              return null;
                            }
                          },
                          onSaved: (value) {
                            emailController.text = value!;
                          },
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: passwordController,
                          obscureText: _isObscure3,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                icon: Icon(_isObscure3
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    _isObscure3 = !_isObscure3;
                                  });
                                }),
                            prefixIcon: Icon(Icons.lock_outline_rounded),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.3),
                            hintText: 'Contraseña',
                            enabled: true,
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 4.0, top: 15.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: new BorderSide(
                                  width: 5,
                                  color: Color.fromARGB(248, 242, 243, 245)),
                              borderRadius: new BorderRadius.circular(18),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: new BorderSide(
                                  width: 3,
                                  color: Color.fromARGB(248, 240, 241, 241)),
                              borderRadius: new BorderRadius.circular(18),
                            ),
                          ),
                          validator: (value) {
                            RegExp regex = new RegExp(r'^.{6,}$');
                            if (value!.isEmpty) {
                              return "Campo De Contraseña Vacio";
                            }
                            if (!regex.hasMatch(value)) {
                              return ("por favor ingrese una contraseña válida min. 6 caracteres");
                            } else {
                              return null;
                            }
                          },
                          onSaved: (value) {
                            passwordController.text = value!;
                          },
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        MaterialButton(
                          elevation: 5.0,
                          height: 40,
                          onPressed: () {
                            setState(() {
                              visible = true;
                            });
                            signIn(
                                emailController.text, passwordController.text);
                          },
                          child: Text(
                            "INICIAR SESION",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),SizedBox(height: 50,),
                        Text(
                          "¿No tienes Cuenta?",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        MaterialButton(
                      child: Text(
                          "Registrate Aqui",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          decoration: TextDecoration.underline,
                          fontSize: 15,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Register(),
                          ),
                        );
                      },
                      
                      
                    ),
                        SizedBox(
                          height: 25,
                        ),
                        
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
}