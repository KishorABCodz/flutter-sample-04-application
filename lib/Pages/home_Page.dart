import 'package:flutter/material.dart';
import 'package:protien_calculator/shares/bottomNav.dart';
import 'package:protien_calculator/shares/navigation.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MybodyIndex'),
      ),
      drawer: navigationSide(),
      bottomNavigationBar: bottomNavigation(),
    );
  }
}
