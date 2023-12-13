import 'package:flutter/material.dart';

class LatestTripWidget extends StatelessWidget {
  const LatestTripWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: const Color.fromRGBO(209, 209, 209, 1),
          width: 2.0,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(64, 70, 136, 1),
                  ),
                  child: const Icon(
                    Icons.swap_vert,
                    color: Colors.white,
                    size: 60,
                  ),
                ),
              ),
              const Text(
                "Latest trip",
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromRGBO(192, 192, 192, 1),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.arrow_forward_ios,
              size: 25,
              color: Color.fromRGBO(156, 156, 156, 1),
            ),
          ),
        ],
      ),
    );
  }
}
