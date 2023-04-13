import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../Keranjang/keranjang_page.dart';
import '../homepage/homepage.dart';
import '../profile/ubahprofile.dart';
import '../profile/profile.dart';
import '../Keranjang/keranjang_page.dart';
import '../profile/profile.dart';
import '../homepage/homepage.dart';

class BottomNavi extends StatefulWidget {
  const BottomNavi({super.key});

  @override
  _BottomNaviState createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {
  int currentIndex = 0;
  final List<Widget> body = [
    HomePage(),
    KeranjangPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar:
          BottomNavigationBar(onTap: ontap, currentIndex: currentIndex, items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: HexColor('#6572EA'),
            ),
            label: "Beranda"),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_cart,
            color: HexColor('#6572EA'),
          ),
          label: "Keranjang",
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: HexColor('#6572EA'),
            ),
            label: "Profil"),
      ]),
    );
  }

  void ontap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
