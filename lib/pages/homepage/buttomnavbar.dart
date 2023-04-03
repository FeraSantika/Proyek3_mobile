import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proyek_3/pages/Keranjang/keranjang_page.dart';
import 'package:proyek_3/pages/homepage/homepage.dart';
import 'package:proyek_3/pages/profile/ubahprofile.dart';
import 'package:proyek_3/pages/profile/profile.dart';

class BottomNavi extends StatefulWidget {
  const BottomNavi({super.key});

  @override
  _BottomNaviState createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {
  int currentIndex = 0;
  final List<Widget> body = [ProfilePage(), HomePage(), KeranjangPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar:
          BottomNavigationBar(onTap: ontap, currentIndex: currentIndex, items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: HexColor('#6572EA'),
            ),
            label: "Profil"),
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
      ]),
    );
  }

  void ontap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
