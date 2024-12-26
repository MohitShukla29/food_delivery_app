import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/food_delivery_home_screen.dart';
import 'package:food_delivery_app/screens/food_detail_screen.dart';
import 'package:food_delivery_app/screens/onboard_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyonBoardPage(),
    );
  }
}
