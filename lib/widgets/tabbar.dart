import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const Center(child: Text('Inicio', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Personalización', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Consumo', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Perfil', style: TextStyle(fontSize: 24))),
  ];

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), // para redondear los bordes de arriba
            topRight: Radius.circular(25),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          child: SizedBox(
            height: 90,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedIndex,
              onTap: _onTabSelected,
              backgroundColor: Colors.black,
              selectedItemColor: Colors.purpleAccent,
              unselectedItemColor: Color.fromARGB(255, 159, 156, 156),
              showUnselectedLabels: true,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home, size: 30), // para hacer los icónos más grandes
                  label: 'Inicio',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.palette, size: 30),
                  label: 'Personalización',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.bar_chart, size: 30),
                  label: 'Consumo',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person, size: 30),
                  label: 'Perfil',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
