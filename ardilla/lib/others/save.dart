import 'package:ardilla/classes/app_color.dart';
import 'package:flutter/material.dart';

import '../classes/main_class.dart';

class Save extends StatefulWidget {
  const Save({Key? key}) : super(key: key);

  @override
  State<Save> createState() => _SaveState();
}

class _SaveState extends State<Save> {
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
            MainClass.txtB('Save', 24),
          ],
        )
      )
    );
  }
}
