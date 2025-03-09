import 'package:flutter/material.dart';
import 'package:ligthstep/widgets/scaffold_con_degradado.dart';

class Personalizacion extends StatefulWidget {
  const Personalizacion({super.key});

  @override
  State<Personalizacion> createState() => _PersonalizacionState();
}

class _PersonalizacionState extends State<Personalizacion> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldConDegradado(
      appBar: AppBar(
        title: const Text("Iniciar"),
        backgroundColor: Colors.black.withOpacity(0.5),
      ),
      body: const Center(
        child: Text(
          "Contenido",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
