import 'package:flutter/material.dart';
import 'package:ligthstep/screens/iniciar_sesion.dart';
import 'package:ligthstep/screens/perfil.dart';
// import 'package:light_step_app/screens/personalizacion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Oculta la bandera de debug
      theme: ThemeData(
        fontFamily: 'Roboto Mono',
        scaffoldBackgroundColor: Colors.transparent,
      ),
      home: PerfilScreen(),
    );
  }
}
