import 'package:flutter/material.dart';

import '../classes/app_color.dart';
import '../others/dilla.dart';
import '../others/explore.dart';
import '../others/learn.dart';
import '../others/save.dart';
import 'home.dart';

class MainPage extends StatefulWidget {
  final int ind;
  const MainPage({super.key, required this.ind});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int index = 0;

  final screens =  [
  const HomePage(),
  const Save(),
  const Explore(),
  const Learn(),
  const Dilla(),
  ];

  final bottomIcons = const [
    BottomNavigationBarItem(
      icon: ImageIcon(
        AssetImage('assets/nav/h1.png'),
      ),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: ImageIcon(
        AssetImage('assets/nav/h2.png'),
      ),
      label: 'Save',
    ),
    BottomNavigationBarItem(
      icon: ImageIcon(
        AssetImage('assets/nav/h3.png'),
      ),
      label: 'Explore',
    ),
    BottomNavigationBarItem(
      icon: ImageIcon(
        AssetImage('assets/nav/h4.png'),
      ),
      label: 'Learn',
    ),
    BottomNavigationBarItem(
      icon: ImageIcon(
        AssetImage('assets/nav/h5.png'),
      ),
      label: 'Dilla',
    )
  ];

  @override
  void initState() {
    setState(() {
      index = widget.ind;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
          index: index,
          children: screens
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: AppColor.colorApp,
        unselectedItemColor: Colors.black.withOpacity(0.5),
        type: BottomNavigationBarType.fixed,
        items: bottomIcons,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: index,
        onTap: (index) => setState(() => this.index = index),
      ),
    );
  }

}
