import 'package:ardilla/screens/home_main.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../classes/main_class.dart';
import '../classes/app_color.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {

  TextEditingController controlUser = TextEditingController();
  TextEditingController controlFirst = TextEditingController();
  TextEditingController controlLast = TextEditingController();
  TextEditingController controlPhone = TextEditingController();
  TextEditingController controlInvite = TextEditingController();
  TextEditingController controlPass = TextEditingController();

  FocusNode focusUser = FocusNode();
  FocusNode focusFirst = FocusNode();
  FocusNode focusLast = FocusNode();
  FocusNode focusPhone = FocusNode();
  FocusNode focusInvite = FocusNode();
  FocusNode focusPass = FocusNode();

  bool isEnable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                MainClass.bH(16),
                MainClass.txtB('Complete your \nprofile', 32),
                MainClass.bH(32),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MainClass.edt(focusUser,
                            controlUser, TextInputType.name,
                            128, 'Username', Icons.swap_horiz),
                        MainClass.bH(16),
                        MainClass.edt(focusFirst,
                            controlFirst, TextInputType.name,
                            64, 'First Name', Icons.person_outline),
                        MainClass.bH(16),
                        MainClass.edt(focusLast,
                            controlLast, TextInputType.name,
                            64, 'Last Name', Icons.person_outline),
                        MainClass.bH(16),
                        MainClass.edt(focusPhone,
                            controlPhone, TextInputType.number,
                            16, 'Phone Number', Icons.person_outline),
                        MainClass.bH(16),
                        MainClass.edt(focusInvite,
                            controlInvite, TextInputType.name,
                            28, 'Invite code (optional)', Icons.person_outline),
                        MainClass.bH(16),
                        MainClass.edt(focusPass,
                            controlPass, TextInputType.name,
                            64, 'Password', Icons.lock_outlined),
                        MainClass.bH(32),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColor.colorApp,
                            ),
                            children: <TextSpan>[
                              TextSpan(text: 'By Signin Up, You\'re agreeing to our ', style: TextStyle(color: AppColor.colorAppGray, fontSize: 14)),
                              TextSpan(text: 'Terms and Condition ', recognizer: TapGestureRecognizer()
                                    ..onTap = () => {},
                                  ),
                              TextSpan(text: 'and ', style: TextStyle(color: AppColor.colorAppGray, fontSize: 14)),
                              TextSpan(text: 'Privacy Policy', recognizer: TapGestureRecognizer()
                                    ..onTap = () => {},
                                  ),
                            ],
                          ),
                        ),
                        MainClass.bH(24),
                        ElevatedButton(
                            onPressed: () => MainClass.open(context, const MainPage(ind: 0)),
                            style: MainClass.btnSty(),
                            child: MainClass.txtWN('Create Account', 16)
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
