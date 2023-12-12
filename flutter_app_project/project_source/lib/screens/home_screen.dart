import 'package:flutter/material.dart';
import 'package:project_source/widgets/bottom_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        toolbarHeight: 70,
        backgroundColor: const Color.fromRGBO(226, 238, 252, 1),
        foregroundColor: Colors.black,
        leading: null,
      ),
      backgroundColor: Colors.white,
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
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomBarWidget(
              highlighted: "Home",
            ),
          ),
        ],
      ),
    );
  }
}
