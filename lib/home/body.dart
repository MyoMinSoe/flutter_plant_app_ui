import 'package:flutter/material.dart';
import 'package:flutter_plant_app_ui/home/widgets/featuredplants_and_button.dart';
import 'package:flutter_plant_app_ui/home/widgets/recommended_and_morebutton.dart';
import 'package:flutter_plant_app_ui/home/widgets/featured_plants.dart';
import 'package:flutter_plant_app_ui/home/widgets/recommended_plants.dart';
import 'package:flutter_plant_app_ui/home/widgets/top_menu_bar.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          TopMenuBar(height: height, width: width),
          SizedBox(height: height * 0.04),
          const RecommendedAndMoreButton(),
          const RecommendedPlants(),
          SizedBox(height: height * 0.03),
          const FeaturedPlantsAndButton(),
          const FeaturedPlants(),
        ],
      ),
    );
  }
}
