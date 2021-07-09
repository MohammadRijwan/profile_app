import 'package:flutter/material.dart';
import 'package:profile_app/profile_screen.dart';

import 'car_remote_screen.dart';
import 'food_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.transparent)
      ),
      home: FoodHome(),
    );
  }
}
