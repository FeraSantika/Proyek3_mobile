import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proyek_3/pages/homepage/homepage.dart';
import 'package:proyek_3/pages/profile/ubahprofile.dart';
import 'package:proyek_3/pages/widgets/buttomnavbar.dart';
import '../lib/pages/homepage/homepage.dart';
import '../pages/profile/alamatbaru.dart';
import '../lib/pages/profile/ubahprofile.dart';
import '../pages/profile/alamat.dart';
import 'package:proyek_3/pages/splash_screen.dart';

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
      initialRoute: 'splash_screen',
      theme: ThemeData(
        primaryColor: _primaryColor,
        accentColor: _accentColor,
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.grey,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        'bottomnavbar': (context) => const BottomNavi(),
        'ubahprofile': (context) => const UbahProfil(),
        'alamat': (context) => Alamat(
              nama_pengguna: "Fera Santika",
              phone: "083101231336",
              label: "Rumah",
              alamat: "Jatibarang",
              detail_alamat: "Indramayu",
            ),
        'alamatbaru': (context) => const AlamatBaru(),
        'splash_screen': (context) => SplashScreen(title: ''),
      },
    );
  }
}
