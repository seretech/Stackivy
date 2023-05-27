import 'package:flutter/material.dart';

import 'app_color.dart';

class MainClass{

  static bH(sz) {
    double a1 = sz.toDouble();
    return SizedBox(height: a1);
  }

  static bW(sz) {
    double a1 = sz.toDouble();
    return SizedBox(width: a1);
  }

  static devH(ctx, sz){
    double a1 = sz.toDouble();
    return MediaQuery.of(ctx).size.height / a1;
  }

  static devW(ctx, sz){
    double a1 = sz.toDouble();
    return MediaQuery.of(ctx).size.width / a1;
  }

  static txtWN(txt, sz){
    double a1 = sz.toDouble();
    return Text(txt, style: TextStyle(color: Colors.white, fontSize: a1, fontFamily: 'Cabinet-Grotesk'));
  }

  static txtWB(txt, sz){
    double a1 = sz.toDouble();
    return Text(txt, style: TextStyle(color: Colors.white, fontSize: a1, fontWeight: FontWeight.bold,fontFamily: 'Cabinet-Grotesk'));
  }

  static txtBN(txt, sz){
    double a1 = sz.toDouble();
    return Text(txt, softWrap: true, style: TextStyle(color: Colors.black, fontSize: a1, fontFamily: 'Cabinet-Grotesk'));
  }

  static txtBB(txt, sz){
    double a1 = sz.toDouble();
    return Text(txt, softWrap: true, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: a1, fontFamily: 'Cabinet-Grotesk'));
  }

  static txtGrN(txt, sz){
    double a1 = sz.toDouble();
    return Text(txt, softWrap: true, style: TextStyle(color: Colors.green, fontSize: a1, fontFamily: 'Cabinet-Grotesk'));
  }

  static txtGN(txt, sz){
    double a1 = sz.toDouble();
    return Text(txt, softWrap: true, style: TextStyle(color: AppColor.colorAppGray, fontSize: a1, fontFamily: 'Cabinet-Grotesk'));
  }

  static txtGB(txt, sz){
    double a1 = sz.toDouble();
    return Text(txt, softWrap: true, style: TextStyle(color: AppColor.colorAppGray, fontWeight: FontWeight.bold,fontSize: a1, fontFamily: 'Cabinet-Grotesk'));
  }

  static txtN(txt, sz){
    double a1 = sz.toDouble();
    return Text(txt, softWrap: true, style: TextStyle(color: AppColor.colorApp, fontSize: a1, fontFamily: 'Cabinet-Grotesk'));
  }

  static txtB(txt, sz){
    double a1 = sz.toDouble();
    return Text(txt, softWrap: true, style: TextStyle(color: AppColor.colorApp, fontSize: a1, fontWeight: FontWeight.bold, fontFamily: 'Cabinet-Grotesk'));
  }

  static txtBAl(txt, sz){
    double a1 = sz.toDouble();
    return Text(txt, textAlign: TextAlign.center, softWrap: true, style: TextStyle(color: AppColor.colorApp, fontSize: a1,fontWeight: FontWeight.bold, fontFamily: 'Cabinet-Grotesk'));
  }

  static decor(){
    return BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColor.colorAppBgColor
    );
  }

  static decorW(){
    return BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white
    );
  }

  static btnSty(){
    return ElevatedButton.styleFrom(
      splashFactory: NoSplash.splashFactory,
      backgroundColor: AppColor.colorApp,
      minimumSize: const Size.fromHeight(50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
    );
  }

  static btnStyW(){
    return ElevatedButton.styleFrom(
      splashFactory: NoSplash.splashFactory,
      backgroundColor: Colors.white,
      minimumSize: const Size.fromHeight(50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
        side: BorderSide(
          color: AppColor.colorApp,
          width: 1,
        )
      ),
    );
  }

  static edt(focus, control, input, max, hint, ic){
    return TextField(
      focusNode: focus,
      controller: control,
      style: const TextStyle(color: Colors.black),
      cursorColor: AppColor.colorApp,
      cursorHeight: 20,
      keyboardType: input,
      maxLength: max,
      autocorrect: false,
      enableSuggestions: false,
      decoration: InputDecoration(
        prefixIcon: Icon(ic, color: Colors.black26),
        filled: true,
        counterText: '',
        fillColor: Colors.white,
        hintText: hint,
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
    );
  }

  static open(ctx, p){
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) => p),);
  }

  static cards2(i, n){
    return Expanded(
      child: Column(
        children: [
          Image.asset(i),
          MainClass.txtN(n, 14),
        ],
      ),
    );
  }

  static cards3(i, n){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainClass.txtN(n, 16),
        ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(i, fit: BoxFit.cover)),
      ],
    );
  }

  static cards4(i, n){
    return Padding(
      padding: const EdgeInsets.only(top: 32, bottom: 32, left: 40, right: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MainClass.txtWN(i, 20),
          MainClass.bH(12),
          MainClass.txtWN(n, 12),
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
            child: txtWN('Coming Soon', 12),
          )
        ],
      ),
    );
  }

  static cardL(ctx){
    return Container(
      height: devW(ctx, 4),
      width: 1.5,
      color: Colors.white,
    );
  }

  static cardI(c){
    return Expanded(
      child: Container(
        height:4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: c,
        ),
      ),
    );
  }

  static navI(i, n, ty, ctx){
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 16, bottom: 16),
      child: InkWell(
        onTap: () => Navigator.pop(ctx),
        child: Row(
          children: [
            ImageIcon(AssetImage(i), color: Colors.white),
            MainClass.bW(20),
            MainClass.txtWN(n, 14),
            if(ty)
              MainClass.bW(16),
            if(ty)
            Container(
              padding: const EdgeInsets.only(top: 2, bottom: 2, right: 6, left: 6),
              decoration: BoxDecoration(
                  color: AppColor.colorApp,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                      color: Colors.white,
                      width: 1
                  )
              ),
              child: MainClass.txtWN('Coming Soon', 10),
            )
          ],
        ),
      ),
    );
  }

}