import 'package:flutter/material.dart';
import 'package:ligthstep/widgets/appbar.dart';
import '../widgets/scaffold_con_degradado.dart'; // Importa tu scaffold personalizado

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
      body: const Center(
        child: Text(
          "Contenido aquí",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
