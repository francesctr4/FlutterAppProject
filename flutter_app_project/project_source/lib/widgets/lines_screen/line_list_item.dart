import 'package:flutter/material.dart';
import 'package:project_source/models/line_class.dart';
import 'package:project_source/models/metro_line_colors_map.dart';

class LineListItem extends StatelessWidget {
  const LineListItem({
    super.key,
    required this.line,
  });

  final Line line;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          "/stationsScreen",
          arguments: line,
        );
      },
      child: ListTile(
        leading: Container(
          width: 45,
          height: 45,
          color: metroLineColors[line.lineName],
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "${line.lineName}",
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
        ),
        title: Text(
          "Line ${line.lineName}",
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
        subtitle: Text(
          "${line.firstStation!} - ${line.lastStation!}",
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
