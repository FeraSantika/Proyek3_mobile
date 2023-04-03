import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyek_3/pages/registrasi/registration_page.dart';

class Shop extends StatelessWidget {
  final String imagePath;
  final String nameShop;
  final String alamat;
  final String lihatLainnya;
  const Shop({
    Key? key,
    required this.imagePath,
    required this.nameShop,
    required this.alamat,
    required this.lihatLainnya,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 240,
        child: Stack(
          children: [
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 10,
              child: Column(
                children: [
                  SizedBox(
                      width: double.infinity,
                      height: 150,
                      child: Image.asset(imagePath, fit: BoxFit.cover))
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                left: 10,
                child: SizedBox(
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(nameShop,
                            style: GoogleFonts.montserrat(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on_rounded, color: Colors.blue),
                            SizedBox(
                              width: 5,
                            ),
                            Text(alamat,
                                style: GoogleFonts.montserrat(fontSize: 12)),
                            SizedBox(
                              width: 170,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, 'halaman_lain');
                              },
                              child: Text(
                                lihatLainnya,
                                style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ));
  }
}
