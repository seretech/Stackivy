import 'package:ardilla/classes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:page_indicator_plus/page_indicator_plus.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../classes/main_class.dart';
import '../classes/nav_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  PageController pageController = PageController(initialPage: 0);
  PageController pageController1 = PageController(initialPage: 0);
  PageController pageController2 = PageController(initialPage: 0);

  bool show = true, show1 = true, show2 = true, curSwap1 = true, curSwap2 = true;
  String val1 = 'USD 10,000.00', val1H = 'USD *******';
  String val2 = 'NGN 400,000.00', val2H = 'NGN *******';

  double fir = 0, sec = 4;

  Color col1 = AppColor.colorApp, col2 = Colors.grey.withOpacity(0.5), col3 = Colors.grey.withOpacity(0.5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Image.asset('assets/ava.png'),
                          MainClass.bW(12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  MainClass.txtGN('Good Morning', 14),
                                  MainClass.bW(8),
                                  Icon(Icons.sunny, color: AppColor.colorAppAmber, size: 16)
                                ],
                              ),
                              MainClass.bH(8),
                              MainClass.txtB('Cadet <Annie/>', 24),
                            ],
                          ),
                        ],
                      ),
                    ),
                    MainClass.bW(12),
                    Stack(
                      children: [
                        Icon(Icons.notifications_none_rounded, color: Colors.grey.withOpacity(0.8), size: 24),
                        Positioned(
                          left: 12,
                          top: 4,
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.8),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                MainClass.bH(32),
                SizedBox(
                  width: MainClass.devW(context, 1),
                  height: MainClass.devW(context, 1.9),
                  child: PageView(
                    onPageChanged: (i){
                      setState(() {
                        if(i == 0){
                          col1 = AppColor.colorApp;
                          col2 = Colors.grey.withOpacity(0.5);
                          col3 = Colors.grey.withOpacity(0.5);
                        } else if(i == 1){
                          col1 = Colors.grey.withOpacity(0.5);
                          col2 = AppColor.colorApp;
                          col3 = Colors.grey.withOpacity(0.5);
                        } else if(i == 2){
                          col1 = Colors.grey.withOpacity(0.5);
                          col2 = Colors.grey.withOpacity(0.5);
                          col3 = AppColor.colorApp;
                        }
                      });
                    },
                    controller: pageController,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 8),
                        child: Stack(
                          children: [
                            Image.asset('assets/cards/1.png', fit: BoxFit.contain, width: MainClass.devW(context, 1)),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        MainClass.txtWN('SAN', 16),
                                        MainClass.bW(16),
                                        Container(
                                          padding: const EdgeInsets.only(top: 4, bottom: 4, left: 10, right: 10),
                                          decoration: BoxDecoration(
                                            color: Colors.pink,
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                          child: MainClass.txtWN('+10.00%', 12),
                                        )
                                      ],
                                    ),
                                    MainClass.bH(16),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        show ? MainClass.txtWB('NGN 100,000.00', 24) : MainClass.txtWB('NGN *******', 24),
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                if(show){
                                                  show = false;
                                                } else {
                                                  show = true;
                                                }
                                              });
                                            }, child: show ? Padding(
                                          padding: const EdgeInsets.only(left: 4, right: 4, top: 8, bottom: 8),
                                          child: Image.asset('assets/wh_eye.png', height: 24, width: 24, fit: BoxFit.contain),
                                        ) : const Padding(
                                          padding: EdgeInsets.only(left: 4, right: 4, top: 8, bottom: 8),
                                          child: Icon(Icons.visibility, color: Colors.white, size: 24),
                                        )
                                        ),
                                      ],
                                    ),
                                    MainClass.bH(16),
                                    MainClass.txtWN('**********', 24),
                                    MainClass.bH(12),
                                    Row(
                                      children: [
                                        MainClass.txtWN('Generate Account Number', 12),
                                        MainClass.bW(12),
                                        const Icon(Icons.arrow_circle_right, color: Colors.white, size: 20),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 8),
                        child: Stack(
                          children: [
                            Image.asset('assets/cards/2.png', fit: BoxFit.contain, width: MainClass.devW(context, 1)),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    MainClass.txtWN('Dilla Wallet', 16),
                                    MainClass.bH(16),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        show1 ? MainClass.txtWB(val1, 24) : MainClass.txtWB(val1H, 24),
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                if(show1){
                                                  show1 = false;
                                                } else {
                                                  show1 = true;
                                                }
                                              });
                                            }, child: show1 ? Padding(
                                          padding: const EdgeInsets.only(left: 4, right: 4, top: 8, bottom: 8),
                                          child: Image.asset('assets/wh_eye.png', height: 24, width: 24, fit: BoxFit.contain),
                                        ) : const Padding(
                                          padding: EdgeInsets.only(left: 4, right: 4, top: 8, bottom: 8),
                                          child: Icon(Icons.visibility, color: Colors.white, size: 24),
                                        )
                                        ),
                                      ],
                                    ),
                                    MainClass.bH(24),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                                padding: const EdgeInsets.only(top: 4, bottom: 4, left: 12, right: 12),
                                                decoration: BoxDecoration(
                                                  color: Colors.white.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(16),
                                                ),
                                              child: Row(
                                                children: [
                                                  InkWell(
                                                    onTap: (){
                                                      setState(() {
                                                        if(curSwap1){
                                                          curSwap1 = false;
                                                        } else {
                                                          curSwap1 = true;
                                                        }
                                                        val1 = 'NGN 7,400,000.00';
                                                        val1H = 'NGN *******';
                                                      });
                                                    },
                                                    child: Container(
                                                      padding: const EdgeInsets.only(top: 4, bottom: 4, left: 12, right: 12),
                                                      decoration: BoxDecoration(
                                                        color: curSwap1 ? Colors.transparent : Colors.white,
                                                        borderRadius: BorderRadius.circular(16),
                                                      ),
                                                      child: curSwap1 ? MainClass.txtWN('NGN', 12) : MainClass.txtN('NGN', 12),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: (){
                                                      setState(() {
                                                        if(curSwap1){
                                                          curSwap1 = false;
                                                        } else {
                                                          curSwap1 = true;
                                                        }
                                                        val1 = 'USD 10,000.00';
                                                        val1H = 'USD *******';
                                                      });
                                                    },
                                                    child: Container(
                                                      padding: const EdgeInsets.only(top: 4, bottom: 4, left: 12, right: 12),
                                                      decoration: BoxDecoration(
                                                        color: curSwap1 ? Colors.white : Colors.transparent,
                                                        borderRadius: BorderRadius.circular(16),
                                                      ),
                                                      child: curSwap1 ? MainClass.txtN('USD', 12) : MainClass.txtWN('USD', 12),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            MainClass.bW(12),
                                            MainClass.txtWN('N740 /\$1', 12),
                                          ],
                                        ),
                                        MainClass.bW(12),
                                        Container(
                                          padding: const EdgeInsets.only(top: 12, bottom: 12, left: 16, right: 16),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(24)
                                          ),
                                          child: MainClass.txtN('Add Money', 12),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 8),
                        child: Stack(
                          children: [
                            Image.asset('assets/cards/3.png', fit: BoxFit.contain, width: MainClass.devW(context, 1)),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    MainClass.txtN('Total Funds', 16),
                                    MainClass.bH(16),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        show2 ? MainClass.txtB(val2, 24) : MainClass.txtB(val2H, 24),
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                if(show2){
                                                  show2 = false;
                                                } else {
                                                  show2 = true;
                                                }
                                              });
                                            }, child: show2 ? Padding(
                                          padding: const EdgeInsets.only(left: 4, right: 4, top: 8, bottom: 8),
                                          child: Image.asset('assets/eye.png', height: 24, width: 24, fit: BoxFit.contain),
                                        ) : Padding(
                                          padding: const EdgeInsets.only(left: 4, right: 4, top: 8, bottom: 8),
                                          child: Icon(Icons.visibility, color: AppColor.colorApp, size: 24),
                                        )
                                        ),
                                      ],
                                    ),
                                    MainClass.bH(16),
                                    Container(
                                      padding: const EdgeInsets.only(top: 4, bottom: 4, left: 12, right: 12),
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.only(top: 4, bottom: 4, left: 12, right: 12),
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(0.2),
                                              borderRadius: BorderRadius.circular(16),
                                            ),
                                            child: Row(
                                              children: [
                                                InkWell(
                                                  onTap: (){
                                                    setState(() {
                                                      if(curSwap2){
                                                        curSwap2 = false;
                                                      } else {
                                                        curSwap2 = true;
                                                      }
                                                      val2 = 'NGN 400,000.00';
                                                      val2H = 'NGN *******';
                                                    });
                                                  },
                                                  child: Container(
                                                    padding: const EdgeInsets.only(top: 4, bottom: 4, left: 12, right: 12),
                                                    decoration: BoxDecoration(
                                                      color: curSwap2 ? Colors.transparent : Colors.white,
                                                      borderRadius: BorderRadius.circular(16),
                                                    ),
                                                    child: curSwap2 ? MainClass.txtN('NGN', 12) : MainClass.txtN('NGN', 12),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: (){
                                                    setState(() {
                                                      if(curSwap2){
                                                        curSwap2 = false;
                                                      } else {
                                                        curSwap2 = true;
                                                      }
                                                      val2 = 'USD 504.55';
                                                      val2H = 'USD *******';
                                                    });
                                                  },
                                                  child: Container(
                                                    padding: const EdgeInsets.only(top: 4, bottom: 4, left: 12, right: 12),
                                                    decoration: BoxDecoration(
                                                      color: curSwap2 ? Colors.white : Colors.transparent,
                                                      borderRadius: BorderRadius.circular(16),
                                                    ),
                                                    child: curSwap2 ? MainClass.txtN('USD', 12) : MainClass.txtN('USD', 12),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          MainClass.bW(12),
                                          MainClass.txtGN('N740 /\$1', 12),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                MainClass.bH(16),
                Padding(
                  padding: EdgeInsets.only(left: MainClass.devW(context, 6), right: MainClass.devW(context, 6)),
                  child: Row(
                    children: [
                      MainClass.cardI(col1),
                      MainClass.bW(16),
                      MainClass.cardI(col2),
                      MainClass.bW(16),
                      MainClass.cardI(col3),
                    ],
                  ),
                ),
                MainClass.bH(32),
                MainClass.txtN('Quick Links', 16),
                MainClass.bH(24),
                Container(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child: Row(
                    children: [
                      MainClass.cards2('assets/box/1.png', 'SAN'),
                      MainClass.cards2('assets/box/2.png', 'Save'),
                      MainClass.cards2('assets/box/3.png', 'Learn'),
                      MainClass.cards2('assets/box/4.png', 'Payment'),
                    ],
                  )
                ),
                MainClass.bH(32),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MainClass.txtGN('80%', 36),
                          Row(
                            children: [
                              MainClass.txtN('Complete KYC', 14),
                              MainClass.bW(8),
                              Icon(Icons.arrow_forward_ios, color: AppColor.colorApp, size: 16)
                            ],
                          ),
                          MainClass.bH(12),
                          SizedBox(
                            width: MainClass.devW(context, 4),
                            child: LinearPercentIndicator(
                              lineHeight: 4,
                              percent: 0.8,
                              barRadius: const Radius.circular(8),
                              backgroundColor: Colors.grey.withOpacity(0.4),
                              progressColor: AppColor.colorApp,
                            ),
                          )
                        ],
                      ),
                      MainClass.bW(12),
                      Container(
                        width: 1,
                        height: MainClass.devW(context, 8),
                        color: Colors.black.withOpacity(0.2),
                      ),
                      MainClass.bW(12),
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Icon(Icons.arrow_drop_up, color: Colors.green, size: 16),
                                MainClass.bW(4),
                                MainClass.txtGrN('10.00%', 12),
                                MainClass.bW(4),
                                MainClass.txtN('Cashflow', 12),
                              ],
                            ),
                            MainClass.bH(8),
                            Image.asset('assets/graph.png'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 16,
                                  width: 16,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.pink
                                  ),
                                  child: const Icon(Icons.check, color: Colors.white, size: 12),
                                ),
                                MainClass.bW(4),
                                MainClass.txtN('Inflow', 12),
                                MainClass.bW(24),
                                Container(
                                  height: 16,
                                  width: 16,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColor.colorApp
                                  ),
                                ),
                                MainClass.bW(4),
                                MainClass.txtN('Outflow', 12),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                MainClass.bH(32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Material(
                      borderRadius: BorderRadius.circular(50),
                      elevation: fir,
                      child: InkWell(
                        onTap: () => pageController1.previousPage(duration: const Duration(milliseconds: 500), curve: Curves.easeIn),
                        child: Container(
                          padding: const EdgeInsets.only(left: 8, right: 4, top: 6, bottom: 6),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.arrow_back_ios, color: Colors.black),
                        ),
                      ),
                    ),
                    MainClass.bW(24),
                    Material(
                      borderRadius: BorderRadius.circular(50),
                      elevation: sec,
                      child: InkWell(
                        onTap: () => pageController1.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeIn),
                        child: Container(
                          padding: const EdgeInsets.only(left: 8, right: 4, top: 6, bottom: 6),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.arrow_forward_ios, color: Colors.black),
                        ),
                      ),
                    ),
                  ]
                ),
                MainClass.bH(24),
                Container(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  width: MainClass.devW(context, 1),
                  height: MainClass.devW(context, 2),
                  child: PageView(
                    onPageChanged: (i){
                      setState(() {
                        if(i == 0){
                          fir = 0;
                          sec = 4;
                        } else if(i == 1){
                          fir = 4;
                          sec = 4;
                        } else if(i == 2){
                          fir = 4;
                          sec = 0;
                        }
                      });
                    },
                    controller: pageController1,
                    scrollDirection: Axis.horizontal,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset('assets/cards/invest.png', fit: BoxFit.cover)),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset('assets/cards/save.png', fit: BoxFit.cover)),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset('assets/cards/insure.png', fit: BoxFit.cover)),
                    ],
                  ),
                ),
                MainClass.bH(32),
                Container(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  width: MainClass.devW(context, 1),
                  height: MainClass.devW(context, 1.8),
                  child: PageView(
                    controller: pageController2,
                    scrollDirection: Axis.horizontal,
                    children: [
                      MainClass.cards3('assets/cards/f1.png', 'Rank'),
                      MainClass.cards3('assets/cards/f2.png', 'Badges'),
                      MainClass.cards3('assets/cards/f3.png', 'Referrals'),
                      MainClass.cards3('assets/cards/f4.png', 'Money Wise'),
                    ],
                  ),
                ),
                MainClass.bH(16),
                Center(
                  child: PageIndicator(
                    controller: pageController2,
                    count: 4,
                    size: 6,
                    layout: PageIndicatorLayout.WARM,
                    color: Colors.grey,
                    activeColor: AppColor.colorApp,
                    scale: 0.1,
                    space: 4,
                  ),
                ),
                MainClass.bH(32),
                Stack(
                    children: [
                      Image.asset(
                        'assets/img.png',
                        width: MainClass.devW(context, 1),
                       // height: MainClass.devW(context, 1),
                      ),
                      Positioned(
                        bottom: 32,
                        left: 12,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MainClass.txtWB('CEO, Mrs Oyinye', 16),
                              MainClass.txtWN('What is Ardilla and it benefits?', 14),
                            ]
                        ),
                      ),
                      Positioned(
                        top: MainClass.devW(context, 4),
                          left: MainClass.devW(context, 3),
                          child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(0.3),
                              ),
                              child: const Icon(Icons.play_arrow_rounded, color: Colors.white, size: 48)
                          )
                      ),
                    ]
                ),
                MainClass.bH(32),
                MainClass.txtN('Explore', 16),
                MainClass.bH(16),
                SizedBox(
                  height: MainClass.devW(context, 2),
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              'assets/ex.png',
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Row(
                                  children: [
                                    MainClass.cards4('My Family and I', 'A Family that stay together stays forever'),
                                    MainClass.cardL(context),
                                    MainClass.cards4('Invest With Hargon', 'Loan as an investment'),
                                    MainClass.cardL(context),
                                    MainClass.cards4('Business with Ardilla', 'A Partnership where you Earn'),
                                    MainClass.cardL(context),
                                    Padding(
                                    padding: const EdgeInsets.only(top: 32, bottom: 32, left: 20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        MainClass.txtWN('Tax Save', 20),
                                        MainClass.bH(12),
                                        MainClass.txtWN('Where you save while spending', 12),
                                        MainClass.bH(12),
                                        Container(
                                          padding: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(32),
                                              border: Border.all(
                                                color: Colors.white,
                                                width: 1.5,
                                              )
                                          ),
                                          child: MainClass.txtWN('Coming Soon', 12),
                                        )
                                      ],
                                    ),
                                  ),
                                    //MainClass.cards4('Tax Save', 'Where you save while spending')
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ]
                  ),
                ),
                MainClass.bH(16),
              ],
            ),
          ),
        ),
      ),
      drawer: const NavigationDrawer(),
    );
  }
}
