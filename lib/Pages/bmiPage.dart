import 'package:flutter/material.dart';
import 'package:protien_calculator/shares/bottomNav.dart';
import 'package:protien_calculator/shares/navigation.dart';

class bodyMassIndex extends StatefulWidget {
  const bodyMassIndex({Key? key}) : super(key: key);

  @override
  State<bodyMassIndex> createState() => _bodyMassIndexState();
}

class _bodyMassIndexState extends State<bodyMassIndex> {
  final TextEditingController txtHeight = TextEditingController();
  final TextEditingController txtweight = TextEditingController();
  final double fontSize = 18;
  String result = '';
  bool ismetric = true;
  bool isImperal = false;
  double? height;
  double? weight;
  late List<bool> isSelected;
  String heightMessage = '';
  String weightMessage = '';

  @override
  void initState() {
    // TODO: implement initState
    isSelected = [ismetric, isImperal];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    heightMessage =
        'Please insert the height in' + ((ismetric) ? ' meters' : ' inches');
    weightMessage =
        'Please insert the weight in' + ((ismetric) ? ' kilos' : ' pounds');
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI calculator'),
      ),
      bottomNavigationBar: bottomNavigation(),
      drawer: navigationSide(),
      body: Column(
        children: [
          ToggleButtons(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text('metric', style: TextStyle(fontSize: fontSize)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text('Imperial', style: TextStyle(fontSize: fontSize)),
              ),
            ],
            isSelected: isSelected,
            onPressed: toggleMesure,
          ),
          TextField(
            controller: txtHeight,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(hintText: heightMessage),
          ),
          TextField(
            controller: txtweight,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(hintText: weightMessage),
          ),
          ElevatedButton(
            child: Text('calculate', style: TextStyle(fontSize: fontSize)),
            onPressed: () {},
          ),
          Text(
            result,
            style: TextStyle(fontSize: fontSize),
          )
        ],
      ),
    );
  }

  void toggleMesure(value) {
    if (value == 0) {
      ismetric = true;
      isImperal = false;
    } else {
      ismetric = false;
      isImperal = true;
    }
    setState(() {
      isSelected = [ismetric, isImperal];
    });
  }
}
