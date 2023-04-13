import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:intl/number_symbols.dart';
import 'package:proyek_3/pages/halamantoko/halamantoko.dart';
import '../../../pages/registrasi/registration_page.dart';

class Product extends StatelessWidget {
  final String imagePath;
  final String nameProduct;
  final String alamat;
  final int harga;
  final int terjual;
  const Product(
      {Key? key,
      required this.imagePath,
      required this.nameProduct,
      required this.alamat,
      required this.harga,
      required this.terjual})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hargaFormat = NumberFormat.currency(
      symbol: 'Rp ',
      decimalDigits: 0,
    ).format(harga);

    return SizedBox(
        width: 180,
        height: 180,
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
                      height: 100,
                      child: Image.asset(imagePath, fit: BoxFit.cover))
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                left: 10,
                child: SizedBox(
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(nameProduct,
                            style: GoogleFonts.montserrat(
                                fontSize: 12, fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 5,
                        ),
                        Text(hargaFormat,
                            style: GoogleFonts.montserrat(
                                fontSize: 10, fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on_rounded,
                                color: Colors.blue,
                                size: 10,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(alamat,
                                  style: GoogleFonts.montserrat(fontSize: 10)),
                              SizedBox(
                                width: 5,
                              ),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Halamantoko(),
                              ),
                            );
                          },
                        ),
                        Text('Terjual $terjual',
                            style: GoogleFonts.montserrat(
                                fontSize: 10, fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ));
  }
}
