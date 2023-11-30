import 'package:flutter/material.dart';

import '../widgets/bottom_bar.dart';

class LinesScreen extends StatelessWidget {
  const LinesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Lines",
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
      body: Stack(
        children: [
          ListView.separated(
            itemCount: 11,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Container(
                  width: 40,
                  height: 40,
                  color: Colors.red,
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "L10",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                title: Text("Item $index"),
                subtitle: const Text("This is the subtitle"),
                trailing: const Icon(Icons.arrow_forward_ios),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                height: 1,
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomBar(
              highlighted: "Lines",
            ),
          ),
        ],
      ),
    );
  }
}
