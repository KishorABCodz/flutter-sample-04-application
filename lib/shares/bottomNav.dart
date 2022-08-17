import 'package:flutter/material.dart';

class bottomNavigation extends StatelessWidget {
  const bottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/');

              break;
            case 1:
              Navigator.pushNamed(context, '/BMI');
              break;
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center), label: 'BMI'),
        ]);
  }
}
