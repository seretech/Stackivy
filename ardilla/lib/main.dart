import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'screens/onboarding.dart';

String? initScreen = '';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  final box = GetStorage();

  initScreen = box.read('appLaunch');
  box.write('appLaunch', '1');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
       home: const Onboarding(),
    );
  }
}
