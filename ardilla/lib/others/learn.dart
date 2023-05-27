import 'package:ardilla/classes/app_color.dart';
import 'package:flutter/material.dart';

import '../classes/main_class.dart';

class Learn extends StatefulWidget {
  const Learn({Key? key}) : super(key: key);

  @override
  State<Learn> createState() => _LearnState();
}

class _LearnState extends State<Learn> {
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
            MainClass.txtB('Learn', 24),
          ],
        )
      )
    );
  }
}
