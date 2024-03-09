import 'package:flutter/material.dart';
import 'package:flutter_plant_app_ui/plants/plants.dart';

class PlantDetailImage extends StatelessWidget {
  final int index;
  const PlantDetailImage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Color.fromARGB(155, 12, 152, 105),
              offset: Offset(-10, 30),
              blurRadius: 50)
        ],
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(80), bottomLeft: Radius.circular(80)),
      ),
      height: height * 0.7,
      width: width * 0.7,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(80),
          bottomLeft: Radius.circular(80),
        ),
        child: Image.asset(
          Plants().plantImage[index].image.toString(),
          height: height * 2,
          width: width * 0.5,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
