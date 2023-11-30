import 'package:flutter/material.dart';
import 'package:project_source/api/line_api.dart';
import 'package:project_source/models/line_class.dart';
import 'package:project_source/widgets/line_list_item.dart';

import '../widgets/bottom_bar_widget.dart';

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
          FutureBuilder(
            future: apiLoadLines(),
            builder:
                (BuildContext context, AsyncSnapshot<List<Line>> snapshot) {
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              final lineList = snapshot.data!;
              return ListView.separated(
                itemCount: lineList.length,
                itemBuilder: (BuildContext context, int index) {
                  lineList.sort((a, b) => a.lineNumber.compareTo(b.lineNumber));
                  return LineListItem(line: lineList[index]);
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    height: 1,
                  );
                },
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomBarWidget(
              highlighted: "Lines",
            ),
          ),
        ],
      ),
    );
  }
}
