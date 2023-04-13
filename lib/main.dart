import 'package:cybaze_machine_test/screens/main_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cybaze_machine_test/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(393, 852),
        builder: (context, snapshot) {
          return MaterialApp(
            title: 'Cybaze Machine Test',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            debugShowCheckedModeBanner: false,
            home: const MainScreen(),
          );
        });
  }
}
