import 'package:flutter/material.dart';

class TopMenuBar extends StatelessWidget {
  const TopMenuBar({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.only(
              top: 5,
              left: 20,
              right: 20,
            ),
            height: height * 0.17,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 12, 152, 105),
                    offset: Offset(0, 5),
                    spreadRadius: 10,
                    blurRadius: 80),
              ],
              color: Color.fromARGB(255, 12, 152, 105),
            ),
            child: Row(
              children: [
                const Text(
                  'Hi UiShopy',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Spacer(), //Space between Name and Icon**********
                Container(
                  //outer circle border of Logo Icon*********
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      strokeAlign: 2,
                    ),
                  ),
                  child: //circle logo........
                      const CircleAvatar(
                    radius: 30,
                    child: Icon(
                      Icons.shopify,
                      color: Colors.purple,
                      size: 60,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          //Search Bar . . . . . . . . .
          bottom: 0,
          left: width * 0.05,
          child: SizedBox(
            width: width * 0.9,
            height: height * 0.065,
            child: const SearchBar(
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
              hintText: 'Search',
              hintStyle: MaterialStatePropertyAll(
                TextStyle(
                  color: Color.fromARGB(255, 12, 152, 105),
                ),
              ),
              trailing: [
                Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 12, 152, 105),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
