import 'package:flutter/material.dart';

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
        ),
      ),
    );
  }
}
