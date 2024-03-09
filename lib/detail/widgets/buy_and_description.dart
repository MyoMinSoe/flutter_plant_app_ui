import 'package:flutter/material.dart';

class BuyAndDescription extends StatelessWidget {
  const BuyAndDescription({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(35),
            ),
            color: Color.fromARGB(255, 12, 152, 105),
          ),
          alignment: Alignment.center,
          height: height * 0.08,
          width: width * 0.5,
          child: const Text(
            'Buy Now',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
            ),
            color: Color.fromARGB(20, 12, 152, 105),
          ),
          alignment: Alignment.center,
          height: height * 0.08,
          width: width * 0.5,
          child: const Text(
            'Description',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
      ],
    );
  }
}
