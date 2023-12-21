import 'package:flutter/material.dart';
import 'package:project_source/api/combinations_api.dart';
import 'package:project_source/models/station_home_class.dart';
import 'package:project_source/widgets/combinations_screen/combinations_list_item.dart';

class CombinationsScreen extends StatelessWidget {
  const CombinationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final type = ModalRoute.of(context)!.settings.arguments as String;

    return _CombinationsScreenImplementation(type: type);
  }
}

class _CombinationsScreenImplementation extends StatefulWidget {
  const _CombinationsScreenImplementation({
    required this.type,
  });

  final String type;

  @override
  State<_CombinationsScreenImplementation> createState() =>
      _CombinationsScreenImplementationState();
}

class _CombinationsScreenImplementationState
    extends State<_CombinationsScreenImplementation> {
  TextEditingController searchTextController = TextEditingController();
  String filter = "";

  @override
  void dispose() {
    searchTextController.dispose();
    super.dispose();
  }

  void searchStation(String query) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.type,
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 40, 50, 0),
                child: TextField(
                  controller: searchTextController,
                  onChanged: (value) {
                    setState(() {
                      filter = value;
                    });
                  },
                  decoration: const InputDecoration(
                    hintText: 'Search station...',
                  ),
                ),
              ),
              FutureBuilder(
                future: apiLoadAllStations(),
                builder: (BuildContext context,
                    AsyncSnapshot<List<StationHome>> snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  var stationList = snapshot.data!;

                  final filteredList = stationList.where((station) {
                    final name = station.stationName!.toLowerCase();
                    final input = filter.toLowerCase();
                    return name.contains(input);
                  }).toList();

                  stationList = filteredList;

                  return Container(
                    margin: const EdgeInsets.fromLTRB(50, 135, 50, 0),
                    child: ListView.separated(
                      itemCount: stationList.length,
                      itemBuilder: (BuildContext context, int index) {
                        stationList.sort(
                            (a, b) => a.stationName!.compareTo(b.stationName!));
                        return CombinationsListItem(
                          station: stationList[index],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const Divider(
                          thickness: 2,
                          height: 2,
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
