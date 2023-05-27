import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../classes/app_color.dart';
import '../classes/main_class.dart';
import 'create_account.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({Key? key}) : super(key: key);

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Icon(Icons.arrow_back_ios, color: AppColor.colorApp),
                      )),
                ),
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/fly.png'),
                          MainClass.bH(24),
                          MainClass.txtBAl('Verify your email address', 32),
                        ],
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    MainClass.bH(24),
                    ElevatedButton(
                        onPressed: () async {
                          await launchUrl(Uri.parse("mailto:''"));
                        },
                        style: MainClass.btnStyW(),
                        child: MainClass.txtN('Open Email App', 14)
                    ),
                    MainClass.bH(24),
                    ElevatedButton(
                        onPressed: () => MainClass.open(context, const CreateAccount()),
                        style: MainClass.btnSty(),
                        child: MainClass.txtWN('Continue', 14)
                    ),
                    MainClass.bH(24),
                  ],
                )
              ],
            ),
          ),
        ),
    );
  }
}
