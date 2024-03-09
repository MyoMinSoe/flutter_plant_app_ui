import 'package:flutter/material.dart';
import 'package:flutter_plant_app_ui/plants/plants.dart';

class PlantDetailText extends StatelessWidget {
  final int index;
  const PlantDetailText({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Plants().plantImage[index].name.toString().toUpperCase(),
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                Plants().plantImage[index].price.toString(),
                style: const TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 12, 152, 105),
                ),
              ),
            ],
          ),
          Text(
            Plants().plantImage[index].country.toString(),
            style: const TextStyle(
              fontSize: 25,
              color: Color.fromARGB(255, 12, 152, 105),
            ),
          ),
        ],
      ),
    );
  }
}
