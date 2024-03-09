import 'package:flutter/material.dart';
import 'package:flutter_plant_app_ui/detail/detail_screen.dart';
import 'package:flutter_plant_app_ui/plants/plants.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(90, 12, 152, 105),
            offset: Offset(0, 50),
            blurRadius: 50,
          ),
        ],
      ),
      height: 270,
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: ListView.builder(
          itemCount: Plants().plantImage.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetailScreen(index)));
              },
              child: Container(
                width: 170,
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      child: Image.asset(
                        Plants().plantImage[index].image.toString(),
                        height: 200,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            Plants()
                                .plantImage[index]
                                .name
                                .toString()
                                .toUpperCase(),
                          ),
                          Text(
                            Plants().plantImage[index].price.toString(),
                            style: const TextStyle(
                              color: Color.fromARGB(214, 12, 152, 105),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        bottom: 10,
                      ),
                      child: Text(
                        Plants().plantImage[index].country.toString(),
                        style: const TextStyle(
                          color: Color.fromARGB(214, 12, 152, 105),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          })),
    );
  }
}
