import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../classes/main_class.dart';
import '../classes/app_color.dart';
import 'get_started.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  TextEditingController controlEmail = TextEditingController();
  TextEditingController controlPass = TextEditingController();

  FocusNode focusEmail = FocusNode();
  FocusNode focusPass = FocusNode();

  bool isVis = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.colorApp,
        body: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/top.png', fit: BoxFit.cover,width: MainClass.devW(context, 1), height: MainClass.devW(context, 2)),
                Align(
                    alignment: Alignment.center,
                    child: Image.asset('assets/j.png', width: MainClass.devW(context, 2), height: MainClass.devW(context, 2))),
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
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MainClass.txtB('Welcome !', 32),
                      MainClass.bH(4),
                      MainClass.txtGN('Here\'s how to Log in to access your account' , 12),
                      MainClass.bH(24),
                      MainClass.edt(focusEmail,
                          controlEmail,
                          TextInputType.emailAddress,
                          64,
                          'Email Address or Kode Hex',
                        Icons.email_outlined,
                      ),
                      MainClass.bH(16),
                      TextField(
                        focusNode: focusPass,
                        controller: controlPass,
                        style: const TextStyle(color: Colors.black),
                        cursorColor: AppColor.colorApp,
                        cursorHeight: 20,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: isVis,
                        obscuringCharacter: '*',
                        maxLength: 64,
                        autocorrect: false,
                        enableSuggestions: false,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock_outlined, color: Colors.black26),
                          suffixIcon: IconButton(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 12),
                              icon: isVis
                                  ? const Icon(Icons.visibility_off,
                                  color: Colors.black26)
                                  : const Icon(Icons.visibility,
                                  color: Colors.black26),
                              onPressed: () =>
                                  setState(() => isVis = !isVis)),
                          filled: true,
                          counterText: '',
                          fillColor: Colors.white,
                          hintText: 'Password',
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
                      MainClass.bH(16),
                      Align(
                        alignment: Alignment.centerRight,
                        child: MainClass.txtN('Forgot Password?', 12),
                      ),
                      MainClass.bH(24),
                      ElevatedButton(
                          onPressed: (){},
                          style: MainClass.btnSty(),
                          child: MainClass.txtWN('Log In', 16)
                      ),
                      MainClass.bH(24),
                      Align(
                        alignment: Alignment.center,
                        child: MainClass.txtGN('Or', 14),
                      ),
                      MainClass.bH(24),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          border: Border.all(
                            color: AppColor.colorApp,
                            width: 1,
                          )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/icons/ic8.png'),
                            MainClass.bW(4),
                            MainClass.txtN('Sign In with SAN ID', 14)
                          ],
                        ),
                      ),
                      MainClass.bH(28),
                      Align(
                        alignment: Alignment.center,
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                                fontSize: 12,
                                color: AppColor.colorAppGray,
                            ),
                            children: <TextSpan>[
                              const TextSpan(text: 'New User? '),
                              TextSpan(text: 'Create Account',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const GetStarted())),
                                  style: TextStyle(color: AppColor.colorApp, fontSize: 12)),
                            ],
                        ),
                      )
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        )
    );
  }

}
