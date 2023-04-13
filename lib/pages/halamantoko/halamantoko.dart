import 'package:flutter/material.dart';
import 'package:proyek_3/pages/halamantoko/detailproduct.dart';
import '../widgets/product.dart';
import '../widgets/searchbar.dart';

class Halamantoko extends StatefulWidget {
  const Halamantoko({super.key});

  @override
  State<Halamantoko> createState() => _Halamantoko();
}

class _Halamantoko extends State<Halamantoko> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: SearchBar(),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailProduct(),
                      ),
                    );
                  },
                  child: Product(
                    imagePath: "assets/images/mangga.png",
                    nameProduct: "Mangga Hj.Sukini",
                    alamat: "Jarak",
                    harga: 10,
                    terjual: 2,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailProduct(),
                      ),
                    );
                  },
                  child: Product(
                    imagePath: "assets/images/mangga.png",
                    nameProduct: "Mangga Hj.Sukini",
                    alamat: "Jarak",
                    harga: 10,
                    terjual: 2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
