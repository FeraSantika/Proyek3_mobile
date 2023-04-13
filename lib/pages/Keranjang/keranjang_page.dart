import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class KeranjangPage extends StatefulWidget {
  const KeranjangPage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<KeranjangPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // leading: IconButton(
          //   icon: Icon(Icons.arrow_back, color: Colors.white),
          //   onPressed: () => Navigator.push(context),
          // ),
          title: Text(
            "Keranjang Saya",
            style: TextStyle(color: Colors.white),
          ),
          elevation:
              0, // ubah nilai ini menjadi 0 untuk menyembunyikan elevasi AppBar
          backgroundColor: HexColor('#6572EA'),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              color: Colors.grey[300],
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 5.0, 5.0, 5.0),
                  child: Row(
                    children: [
                      Icon(Icons.store, color: Colors.black),
                      SizedBox(
                          width:
                              10), // add some space between the icon and text
                      Text(
                        "Nama Toko",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.fromLTRB(10, 10, 0, 5)),
                Image.asset(
                  "assets/images/mangga.png",
                  width: 200,
                  height: 100,
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text(
                      "Mangga Cengkir",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Rp 15.000/Kg",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: HexColor('#6572EA')),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "stok: 10Kg",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: _decrementCounter,
                        ),
                        SizedBox(
                          width: 30,
                          child: Text(
                            '$_counter',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: _incrementCounter,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                            child: Icon(Icons.delete),
                          ),
                          onTap: () {},
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
              height: 20,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(
              height: 300,
            ),
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Container(),
                      Text(
                        "Sub Total",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      Text(
                        "Rp 15.000",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: HexColor('#6572EA')),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      color: HexColor('#6572EA'),
                      padding: EdgeInsets.fromLTRB(60, 20, 50, 20),
                      child: Text("Checkout",
                          style: TextStyle(fontSize: 20, color: Colors.white))),
                ],
              ),
            )
          ]),
        ));
  }
}
