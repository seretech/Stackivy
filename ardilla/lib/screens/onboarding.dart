import 'package:ardilla/Screens/get_started.dart';
import 'package:flutter/material.dart';
import 'package:page_indicator_plus/page_indicator_plus.dart';

import '../classes/app_color.dart';
import '../classes/main_class.dart';
import '../classes/prog_paint.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController pageController = PageController(initialPage: 0);

  double progVal = 0.3;

  bool next = true;

  String title = 'Lorem Ipsum Kip Antares Lorem';
  String sub = 'Lorem ipsum dolor sit amet consectetur. Congue eget aliquet nullam velit volutpat in viverra. Amet integer urna ornare congue ultrices at.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 24, bottom: 24, left: 32, right: 32),
            child: Column(
              children: [
                InkWell(
                  highlightColor: Colors.transparent,
                  splashFactory: NoSplash.splashFactory,
                  onTap: () => MainClass.open(context, const GetStarted()),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: MainClass.txtB('Skip', 16),
                  ),
                ),
                Expanded(
                  child: PageView(
                    onPageChanged: (i){
                      setState(() {
                        if(i == 0){
                          progVal = 0.3;
                          next = true;
                        } else if(i == 1){
                          progVal = 0.6;
                          next = true;
                        } else if(i == 2){
                          progVal = 1;
                          next = false;
                        }
                      });
                    },
                    controller: pageController,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/onboard.png',
                            width: MainClass.devW(context, 1),
                            height: MainClass.devW(context, 1),
                          ),
                          MainClass.bH(16),
                          Text(title,
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: AppColor.colorApp, fontSize: 32,
                                fontWeight: FontWeight.bold, fontFamily: 'Cabinet-Grotesk')),
                          MainClass.bH(16),
                          Text(sub,
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: AppColor.colorAppGray.withOpacity(0.4), fontSize: 12,
                                  fontWeight: FontWeight.bold, fontFamily: 'Cabinet-Grotesk')),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset('assets/onboard.png',
                            width: MainClass.devW(context, 1),
                            height: MainClass.devW(context, 1),
                          ),
                          MainClass.bH(16),
                          Text(title,
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: AppColor.colorApp, fontSize: 32,
                                fontWeight: FontWeight.bold, fontFamily: 'Cabinet-Grotesk')),
                          MainClass.bH(16),
                          Text(sub,
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: AppColor.colorAppGray.withOpacity(0.4), fontSize: 12,
                                  fontWeight: FontWeight.bold, fontFamily: 'Cabinet-Grotesk')),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset('assets/onboard.png',
                            width: MainClass.devW(context, 1),
                            height: MainClass.devW(context, 1),
                          ),
                          MainClass.bH(16),
                          Text(title,
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: AppColor.colorApp, fontSize: 32,
                                fontWeight: FontWeight.bold, fontFamily: 'Cabinet-Grotesk')),
                          MainClass.bH(16),
                          Text(sub,
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: AppColor.colorAppGray.withOpacity(0.4), fontSize: 12,
                                  fontWeight: FontWeight.bold, fontFamily: 'Cabinet-Grotesk')),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PageIndicator(
                      controller: pageController,
                      count: 3,
                      size: 6,
                      layout: PageIndicatorLayout.WARM,
                      color: Colors.grey,
                      activeColor: AppColor.colorApp,
                      scale: 0.1,
                      space: 4,
                    ),
                    InkWell(
                      onTap: () {
                        if(pageController.page == 2){
                          MainClass.open(context, const GetStarted());
                        } else {
                          pageController.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
                        }
                      },
                      child: CustomPaint(
                        painter: CircularPaint(progressValue: progVal),
                        child: SizedBox(
                          width: MainClass.devW(context, 6),
                          height: MainClass.devW(context, 6),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: Container(
                                  width: MainClass.devW(context, 5),
                                  height: MainClass.devW(context, 5),
                                  decoration: BoxDecoration(
                                    color: AppColor.colorApp,
                                    shape: BoxShape.circle,
                                  ),
                                  child: next ? const Icon(Icons.arrow_forward, color: Colors.white, size: 32) : const Center(
                                    child: Text('Get Started',
                                        softWrap: true,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.white, fontSize: 12,
                                            fontWeight: FontWeight.bold, fontFamily: 'Cabinet-Grotesk')),
                                  ),
                                )
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
}
