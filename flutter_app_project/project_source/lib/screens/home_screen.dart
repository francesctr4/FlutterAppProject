import 'package:flutter/material.dart';
import 'package:project_source/widgets/bottom_bar.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color: Colors.white,
          ),
          BottomBar(
            highlighted: "Home",
          ),
        ],
      ),
    );
  }
}
