import 'package:flutter/material.dart';
import 'package:project_source/models/line_class.dart';

class LineListItem extends StatelessWidget {
  const LineListItem({
    super.key,
    required this.line,
  });

  final Line line;
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 45,
        height: 45,
        color: Colors.red,
        child:  Align(
          alignment: Alignment.center,
          child: Text(
            "${line.lineName}",
            style: const TextStyle(
              color: Colors.white,
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
    );
  }
}
