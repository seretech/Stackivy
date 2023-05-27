import 'package:ardilla/classes/app_color.dart';
import 'package:flutter/material.dart';

import '../classes/main_class.dart';

class Dilla extends StatefulWidget {
  const Dilla({Key? key}) : super(key: key);

  @override
  State<Dilla> createState() => _DillaState();
}

class _DillaState extends State<Dilla> {
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
            MainClass.txtB('Dilla', 24),
          ],
        )
      )
    );
  }
}
