import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proyek_3/pages/halamantoko/halamantoko.dart';
import '../../../lib/pages/Keranjang/keranjang_page.dart';
import 'package:proyek_3/pages/widgets/category.dart';
import '../../../lib/pages/widgets/shop.dart';
import '../widgets/searchbar.dart';
import '../widgets/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedNavbar = 0;

  List<Widget> imageSliders = [
    Image.asset('assets/images/homepage.png', fit: BoxFit.fill),
    Image.asset('assets/images/homepage.png', fit: BoxFit.fill),
    Image.asset('assets/images/homepage.png', fit: BoxFit.fill),
  ];

  void _OntapNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    String imagePath;
    String nameShop;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 140,
                  padding: const EdgeInsets.all(0),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/homepage.png"),
                          fit: BoxFit.cover)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  alignment: Alignment.topLeft,
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://studiolorier.com/wp-content/uploads/2018/10/Profile-Round-Sander-Lorier.jpg")),
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(
                                          color: Colors.white,
                                          style: BorderStyle.solid,
                                          width: 2))),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Halo Aji, Selamat Datang !",
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueGrey),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: SearchBar(),
                    ),
                    CarouselSlider(
                      items: imageSliders,
                      options: CarouselOptions(
                        height: 140,
                        autoPlay: true,
                        aspectRatio: 2.0,
                        enableInfiniteScroll: true,
                        enlargeCenterPage: true,
                        // enlargeStrategy: CenterPageEnlargeStrategy.height,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey[200],
                        child: Image.asset(
                          "assets/images/mangga.jpeg",
                          width: 30,
                          height: 30,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Makanan",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey[200],
                        child: Image.asset(
                          "assets/images/baju.jpeg",
                          width: 30,
                          height: 30,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Pakaian",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey[200],
                        child: Image.asset(
                          "assets/images/keripik.jpeg",
                          width: 30,
                          height: 30,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Kerajinan",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "Yang Anda cari ada disini ",
                style: GoogleFonts.montserrat(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Halamantoko(),
                  ),
                );
              },
              child: Shop(
                imagePath: "assets/images/mangga.png",
                nameShop: "Mangga Hj.Sukini",
                alamat: "Jarak",
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Halamantoko(),
                  ),
                );
              },
              child: Shop(
                imagePath: "assets/images/batik.png",
                nameShop: "Rumah Batik",
                alamat: "Jarak",
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Halamantoko(),
                  ),
                );
              },
              child: Shop(
                imagePath: "assets/images/kerupuk.png",
                nameShop: "Sentra Kerupuk",
                alamat: "Jarak",
              ),
            ),
          ],
        )),
      ),
    );
  }
}
