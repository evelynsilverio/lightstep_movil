import 'package:flutter/material.dart';
import 'package:ligthstep/widgets/appbar.dart'; // Asegúrate de importar AppBar
import 'package:ligthstep/widgets/tabbar.dart'; // Tu TabBarScreen
import '../widgets/scaffold_con_degradado.dart'; // Importa el scaffold con degradado

class IniciarSesion extends StatefulWidget {
  const IniciarSesion({super.key});

  @override
  State<IniciarSesion> createState() => _IniciarSesionState();
}

class _IniciarSesionState extends State<IniciarSesion> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldConDegradado(
      appBar: const AppbarStyle(title: "Iniciar Sesión"),
      body: const TabBarScreen(), // Agregar el TabBarScreen aquí
    );
  }
}




