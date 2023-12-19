import 'package:flutter/material.dart';
import 'package:project_source/api/line_stations_api.dart';
import 'package:project_source/models/line_class.dart';
import 'package:project_source/models/station_class.dart';

import '../widgets/stations_screen/line_stations_container.dart';
import '../widgets/stations_screen/station_list_item.dart';

class StationsScreen extends StatelessWidget {
  const StationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final line = ModalRoute.of(context)!.settings.arguments as Line;

    return _StationsScreenImplementation(line: line);
  }
}

class _StationsScreenImplementation extends StatefulWidget {
  const _StationsScreenImplementation({
    required this.line,
  });

  final Line line;

  @override
  State<_StationsScreenImplementation> createState() =>
      _StationsScreenImplementationState();
}

class _StationsScreenImplementationState
    extends State<_StationsScreenImplementation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${widget.line.lineName}",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        toolbarHeight: 100,
        backgroundColor: const Color.fromRGBO(226, 238, 252, 1),
        foregroundColor: Colors.black,
        leading: null,
        elevation: 0,
      ),
      backgroundColor: const Color.fromRGBO(226, 238, 252, 1),
      body: Stack(
        children: [
          FutureBuilder(
            future: apiLoadStationsFromLine(widget.line),
            builder:
                (BuildContext context, AsyncSnapshot<List<Station>> snapshot) {
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              final stationList = snapshot.data!;
              return Container(
                margin: const EdgeInsets.fromLTRB(50, 135, 50, 0),
                child: ListView.builder(
                  itemCount: stationList.length,
                  itemBuilder: (BuildContext context, int index) {
                    stationList.sort(
                        (a, b) => a.stationOrder!.compareTo(b.stationOrder!));
                    return StationListItem(station: stationList[index]);
                  },
                ),
              );
            },
          ),
          LineStationsContainer(line: widget.line),
        ],
      ),
    );
  }
}
