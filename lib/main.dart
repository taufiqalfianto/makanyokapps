import 'package:flutter/material.dart';
import 'package:mobile/detail_page.dart';
import 'package:mobile/home_page.dart';
import 'package:mobile/profile_page.dart';
import 'on_boarding_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late double height, width;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/onboarding',
      routes: {
        '/onboarding': (context) => OnBoardingPage(),
        '/homepage': (context) => HomePage(),
        '/detailpage': (context) => DetailPage(),
        '/profilepage': (context) => ProfilePage(),
      },
      // home: DetailPage(),
    );
  }
}
