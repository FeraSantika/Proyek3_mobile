import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proyek_3/pages/homepage/homepage.dart';
import 'package:proyek_3/pages/homepage/buttomnavbar.dart';
import 'package:proyek_3/pages/profile/ubahprofile.dart';

import 'pages/splash_screen.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  Color _primaryColor = HexColor('#6572EA');
  Color _accentColor = HexColor('#b2b8f4');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login UI',
      initialRoute: 'bottomnavbar',
      theme: ThemeData(
        primaryColor: _primaryColor,
        accentColor: _accentColor,
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.grey,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        'bottomnavbar': (context) => const BottomNavi(),
        'ubahprofile': (context) => const UbahProfil()
      },
    );
  }
}
