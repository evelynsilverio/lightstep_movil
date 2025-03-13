import 'package:flutter/material.dart';

class ScaffoldConDegradado extends StatefulWidget {
  final Widget body;
  final PreferredSizeWidget? appBar; // Permitir personalizar la AppBar
  final BottomNavigationBar? bottomNavigationBar; // Permitir personalizar el BottomNavigationBar

  const ScaffoldConDegradado({
    super.key,
    required this.body,
    this.appBar,
    this.bottomNavigationBar,
  });

  @override
  _ScaffoldConDegradadoState createState() => _ScaffoldConDegradadoState();
}

class _ScaffoldConDegradadoState extends State<ScaffoldConDegradado> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Fondo degradado
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 44, 1, 51),
                Color.fromARGB(255, 106, 11, 100),
                Color.fromARGB(255, 122, 7, 113),
              ],
            ),
          ),
        ),
        // Contenido principal con Scaffold
        Scaffold(
          backgroundColor: Colors.transparent, // Fondo transparente
          appBar: widget.appBar, // Recibe una AppBar personalizada
          body: widget.body, // Recibe el contenido de la pantalla
          bottomNavigationBar: widget.bottomNavigationBar, // Recibe el BottomNavigationBar
        ),
      ],
    );
  }
}
