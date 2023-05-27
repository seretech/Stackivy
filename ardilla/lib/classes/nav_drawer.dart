import 'package:flutter/material.dart';

import 'app_color.dart';
import 'main_class.dart';

class NavigationDrawer extends StatelessWidget {

  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
    child: Container(
      width: MainClass.devW(context, 2),
      color: AppColor.colorApp,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildHeader(context),
          Expanded(child: buildMenus(context)),
          MainClass.bH(24),
          MainClass.navI('assets/icons/ic7.png', 'Log Out', false, context),
          MainClass.bH(16),
        ],
      ),
    ),
  );

  buildHeader(BuildContext context) => Material(
    color: AppColor.colorApp,
    child: Container(
      padding: EdgeInsets.only(top: 24 + MediaQuery.of(context).padding.top, bottom: 24, left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/ava.png'),
          MainClass.bH(12),
          MainClass.txtWB('Anita Ojieh', 16),
        ],
      ),
    ),
  );

  buildMenus(BuildContext context) => Container(
    padding: const EdgeInsets.only(top: 12, bottom: 12, right: 8, left: 8),
    child: SingleChildScrollView(
      child: Column(
        children: [
          MainClass.navI('assets/icons/ic1.png', 'Profile', false, context),
          MainClass.navI('assets/icons/ic2.png', 'Portfolio', false, context),
          MainClass.navI('assets/icons/ic3.png', 'Payment', false, context),
          MainClass.navI('assets/icons/ic4.png', 'Investment', true, context),
          MainClass.navI('assets/icons/ic5.png', 'Insurance', true, context),
          MainClass.navI('assets/icons/ic6.png', 'Budgeting', false, context),
        ],
      ),
    ),
  );
}