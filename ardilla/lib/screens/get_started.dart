import 'package:ardilla/screens/sign_nn.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

import '../classes/main_class.dart';
import '../classes/app_color.dart';
import 'verify_email.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {

  TextEditingController controlEmail = TextEditingController();

  FocusNode focusEmail = FocusNode();

  bool isEnable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.colorApp,
        body: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/top.png', fit: BoxFit.cover,width: MainClass.devW(context, 1), height: MainClass.devW(context, 2)),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: const Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.all(12),
                            child: Icon(Icons.arrow_back_ios, color: Colors.white),
                          ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: 20,
              width: MediaQuery.of(context).size.width - 24,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(24),
                      topLeft: Radius.circular(24)
                  ),
                  color: AppColor.colorAppSmoke
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 48, bottom: 48),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    topLeft: Radius.circular(16)
                  ),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MainClass.txtB('Get Started', 32),
                    MainClass.bH(4),
                    MainClass.txtGN('To Create an account enter a valid email address' , 12),
                    MainClass.bH(24),
                    TextField(
                      onChanged: (s){
                        if(s.isEmpty){
                          isEnable = false;
                        } else {
                          if(EmailValidator.validate(controlEmail.text)){
                            isEnable = true;
                          } else {
                            isEnable = false;
                          }
                        }
                      },
                      focusNode: focusEmail,
                      controller: controlEmail,
                      style: const TextStyle(color: Colors.black),
                      cursorColor: AppColor.colorApp,
                      cursorHeight: 20,
                      keyboardType: TextInputType.emailAddress,
                      maxLength: 64,
                      autocorrect: false,
                      enableSuggestions: false,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.email_outlined, color: Colors.black26),
                        filled: true,
                        counterText: '',
                        fillColor: Colors.white,
                        hintText: 'Email Address',
                        hintStyle: const TextStyle(color: Colors.black26, fontSize: 12),
                        isDense: true,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: Colors.black26),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Colors.black26)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Colors.black26)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        if(isEnable){
                          MainClass.open(context, const VerifyEmail());
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: isEnable ? 2 : 0,
                        splashFactory: NoSplash.splashFactory,
                        backgroundColor: isEnable ? AppColor.colorApp : Colors.black12,
                        minimumSize: const Size.fromHeight(50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      child: MainClass.txtWN('Continue', 16)
                  ),
                  MainClass.bH(24),
                  Align(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColor.colorAppGray,
                          ),
                          children: <TextSpan>[
                            const TextSpan(text: 'Already have an account? '),
                            TextSpan(text: 'Sign in',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const SignIn())),
                                style: TextStyle(color: AppColor.colorApp, fontSize: 12)),
                          ],
                        ),
                      )
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}
