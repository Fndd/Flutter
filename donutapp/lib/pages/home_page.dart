import 'package:flutter/material.dart';

import '../tab/donut_tab.dart';
import '../tab/pancake_tab.dart';
import '../tab/pizza_tab.dart';
import '../tab/smothie_tab.dart';
import '../tab/hamburger_tab.dart';
import '../util/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> mytabs = const [
    MyTab(iconPath: 'lib/icons/donut.png'),
    MyTab(iconPath: 'lib/icons/hamburger.png'),
    MyTab(iconPath: 'lib/icons/avocado.png'),
    MyTab(iconPath: 'lib/icons/pancake.png'),
    MyTab(iconPath: 'lib/icons/pizza.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: mytabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 36,
              ),
              onPressed: () {
                //open drawer
              },
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.person, color: Colors.grey[800], size: 36),
              onPressed: () {
                //account button tapped
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
              child: Row(
                children: const [
                  Text(
                    'I want to eat',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    'EAT',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            //tab bar
            TabBar(
              tabs: mytabs,
            ),
            //Tab bar view
            Expanded(
              child: TabBarView(
                children: [
                  //donut page
                  DonutTab(),
                  //hamburger page
                  BurgerTab(),
                  //smothie page
                  SmothieTab(),
                  //pancake page
                  PancakeTab(),
                  //pizza page
                  PizzaTab(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
