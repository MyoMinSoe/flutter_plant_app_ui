import 'package:flutter/material.dart';

class RecommendedAndMoreButton extends StatelessWidget {
  const RecommendedAndMoreButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          const Text(
            'Recomended',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              decoration: TextDecoration.underline,
              decorationColor: Color.fromARGB(255, 8, 176, 120),
              decorationThickness: 2,
            ),
          ),
          const Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 12, 152, 105),
                foregroundColor: Colors.white),
            onPressed: () {},
            child: const Text('more'),
          ),
        ],
      ),
    );
  }
}
