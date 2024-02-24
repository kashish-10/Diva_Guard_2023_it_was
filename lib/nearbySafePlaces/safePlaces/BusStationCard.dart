import 'package:flutter/material.dart';

class BusStationCard extends StatelessWidget {
  final Function openMapFunc;

  const BusStationCard({Key? key, required this.openMapFunc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          // Card(
          //   elevation: 3,
          //   shape:
          //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          //   child: InkWell(
          //     onTap: () {
          //       openMapFunc("Bus stops near me");
          //     },
          //     child: SizedBox(
          //         height: 50,
          //         width: 50,
          //         child: Center(
          //             child: Image.asset(
          //           "assets/bus-stop.png",
          //           height: 32,
          //         ))),
          //   ),
          // ),
          InkWell(
            onTap: () {
              openMapFunc("Bus stops near me");
            },
            child: Container(
              height: 60,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Image.asset(
                  "assets/bus_stop1.png",
                  height: 50,
                ),
              ),
            ),
          ),
          const Text("Bus Stations")
        ],
      ),
    );
  }
}
