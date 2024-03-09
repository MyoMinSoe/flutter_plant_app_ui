import 'package:flutter/material.dart';

class WeatherIconsColumn extends StatelessWidget {
  const WeatherIconsColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    return Padding(
      padding: EdgeInsets.only(
        top: height * 0.15,
        bottom: height * 0.1,
        left: 30,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(167, 95, 175, 98),
                    blurRadius: 30,
                    offset: Offset(0, 20))
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.light_mode_outlined,
              color: Color.fromARGB(255, 12, 152, 105),
              size: 40,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(167, 95, 175, 98),
                    blurRadius: 30,
                    offset: Offset(0, 20))
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.water_drop_outlined,
              color: Color.fromARGB(255, 12, 152, 105),
              size: 40,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(167, 95, 175, 98),
                    blurRadius: 30,
                    offset: Offset(0, 20))
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.thermostat_auto,
              color: Color.fromARGB(255, 12, 152, 105),
              size: 40,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(167, 95, 175, 98),
                    blurRadius: 30,
                    offset: Offset(0, 20))
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.air,
              color: Color.fromARGB(255, 12, 152, 105),
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
