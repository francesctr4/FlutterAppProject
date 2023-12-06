import 'package:flutter/material.dart';
import 'package:project_source/api/line_stations_api.dart';
import 'package:project_source/models/line_class.dart';
import 'package:project_source/models/station_class.dart';
import 'package:project_source/widgets/bottom_bar_widget.dart';

import '../widgets/station_list_item.dart';

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
        toolbarHeight: 70,
        backgroundColor: const Color.fromRGBO(226, 238, 252, 1),
        foregroundColor: Colors.black,
        leading: null,
      ),
      backgroundColor: Colors.white,
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
                margin: const EdgeInsets.only(bottom: 100),
                child: ListView.separated(
                  itemCount: stationList.length,
                  itemBuilder: (BuildContext context, int index) {
                    stationList.sort(
                        (a, b) => a.stationOrder!.compareTo(b.stationOrder!));
                    return StationListItem(station: stationList[index]);
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(
                      height: 1,
                    );
                  },
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomBarWidget(),
          ),
        ],
      ),
    );
  }
}
