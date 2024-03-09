import 'package:flutter/material.dart';
import 'package:flutter_plant_app_ui/detail/widgets/buy_and_description.dart';
import 'package:flutter_plant_app_ui/detail/widgets/plant_detail_image.dart';
import 'package:flutter_plant_app_ui/detail/widgets/plant_detail_text.dart';
import 'package:flutter_plant_app_ui/detail/widgets/weather_icons_column.dart';

class DetailScreen extends StatelessWidget {
  final int index;
  const DetailScreen(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0),
        actions: const [
          Icon(
            Icons.more_horiz_outlined,
            size: 40,
          ),
          SizedBox(width: 10)
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: height * 0.75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const WeatherIconsColumn(),
                PlantDetailImage(index: index),
              ],
            ),
          ),
          PlantDetailText(index: index),
          BuyAndDescription(height: height, width: width)
        ],
      ),
    );
  }
}
