import 'package:flutter/material.dart';
import 'package:protien_calculator/Pages/contactus.dart';
import 'package:protien_calculator/Pages/home_Page.dart';
import 'package:protien_calculator/Pages/loginPage.dart';

class navigationSide extends StatelessWidget {
  const navigationSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: menuBarItems(context),
      ),
    );
  }

  List<Widget> menuBarItems(BuildContext context) {
    final List<String> menuTitles = ['Home', 'Login', 'contactus', 'Helps'];
    List<Widget> menuItems = [];
    menuItems.add(DrawerHeader(
      decoration: BoxDecoration(color: Colors.white),
      child: Text(
        'Menu',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    ));
    menuTitles.forEach((String element) {
      Widget screen = Container();
      menuItems.add(ListTile(
        title: Text(
          element,
          style: TextStyle(fontSize: 15),
        ),
        onTap: () {
          switch (element) {
            case 'Home':
              screen = homePage();
              break;
            case 'Login':
              screen = loginPage();
              break;
            case 'contact us':
              screen = contactUs();
              break;
            default:
          }
          Navigator.of(context).pop();
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => screen));
        },
      ));
    });
    return menuItems;
  }
}
