import 'package:flutter/material.dart';
import 'package:project_source/models/line_class.dart';
import 'package:project_source/models/metro_line_colors_map.dart';

class LineStationsContainer extends StatelessWidget {
  const LineStationsContainer({
    super.key,
    required this.line,
  });

  final Line line;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: Container(
        height: kToolbarHeight + 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: Icon(
                      Icons.directions_subway,
                      size: 40,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        line.firstStation!,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        line.lastStation!,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
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
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
