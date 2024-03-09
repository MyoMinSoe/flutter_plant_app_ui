import 'package:flutter/material.dart';
import 'package:flutter_plant_app_ui/home/body.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: const Color.fromARGB(255, 12, 152, 105),
        leading: const Icon(
          Icons.short_text,
          color: Colors.white,
        ),
      ),
      body: const Body(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          index = value;
          setState(() {});
        },
        currentIndex: index,
        fixedColor: const Color.fromARGB(255, 12, 152, 105),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.star_rounded), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.heart_broken_rounded), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box_rounded), label: ''),
        ],
      ),
    );
  }
}
