import 'package:ardilla/classes/app_color.dart';
import 'package:flutter/material.dart';

import '../classes/main_class.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColor.colorApp,
                shape: BoxShape.circle
              ),
              child: Image.asset('assets/logo.png'),
            ),
            MainClass.bH(8),
            MainClass.txtB('Explore', 24),
          ],
        )
      )
    );
  }
}
