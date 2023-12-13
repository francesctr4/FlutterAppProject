import 'package:flutter/material.dart';
import 'package:project_source/screens/e_card_screen.dart';
import 'package:project_source/screens/home_screen.dart';
import 'package:project_source/screens/lines_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  BaseScreenState createState() => BaseScreenState();
}

class BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  // Lista de pantallas
  final List<Widget> _screens = [
    const HomeScreen(),
    const ECardScreen(),
    const LinesScreen(),
  ];

  final Map<int, String> upBarName = {
    0: "Home",
    1: "e-Card",
    2: "Lines",
  };

  // Método para cambiar de pantalla
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(upBarName[_selectedIndex]!),
      ),
      body: _screens[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: 'e-Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_subway),
            label: 'Lines',
          ),
        ],
        iconSize: 36,
        selectedFontSize: 18,
        unselectedFontSize: 18,
        backgroundColor: const Color.fromRGBO(64, 70, 136, 1),
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color.fromARGB(100, 255, 255, 255),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
