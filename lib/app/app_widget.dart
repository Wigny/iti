import 'package:flutter/material.dart';
import 'package:iti/app/modules/home/home_module.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primary,
      ),
      home: HomeModule(),
    );
  }

  final MaterialColor primary = const MaterialColor(
    0xFF008940,
    <int, Color>{
      50: Color(0xFFE0F1E8),
      100: Color(0xFFB3DCC6),
      200: Color(0xFF80C4A0),
      300: Color(0xFF4DAC79),
      400: Color(0xFF269B5D),
      500: Color(0xFF008940),
      600: Color(0xFF00813A),
      700: Color(0xFF007632),
      800: Color(0xFF006C2A),
      900: Color(0xFF00591C),
    },
  );
}
