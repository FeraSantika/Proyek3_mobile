import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proyek_3/pages/profile/ubahalamat.dart';
import '../../../lib/pages/profile/ubahalamat.dart';

class Alamat extends StatefulWidget {
  final String nama_pengguna;
  final String phone;
  final String label;
  final String alamat;
  final String detail_alamat;

  const Alamat(
      {super.key,
      required this.nama_pengguna,
      required this.phone,
      required this.label,
      required this.alamat,
      required this.detail_alamat});

  @override
  _AlamatState createState() => _AlamatState();
}

class _AlamatState extends State<Alamat> {
  late String nama_pengguna;
  late String phone;
  late String label;
  late String alamat;
  late String detail_alamat;

  @override
  void initState() {
    super.initState();
    nama_pengguna = widget.nama_pengguna;
    phone = widget.phone;
    alamat = widget.alamat;
    detail_alamat = widget.detail_alamat;
    label = widget.label;
  }

  void _navigateToUbahAlamat() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => UbahAlamat(
              nama_pengguna: nama_pengguna,
              phone: phone,
              alamat: alamat,
              detail_alamat: detail_alamat,
              label: label)),
    );

    if (result != null) {
      setState(() {
        nama_pengguna = result['nama_pengguna'];
        phone = result['phone'];
        alamat = result['alamat'];
        detail_alamat = result['detail_alamat'];
        label = result['label'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text("Alamat Saya"),
          elevation:
              0, // ubah nilai ini menjadi 0 untuk menyembunyikan elevasi AppBar
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context,
                        'alamatbaru'); // Aksi yang ingin dilakukan ketika tombol ditekan
                  },
                  icon: Icon(
                    Icons.add_circle,
                    color: HexColor('#6572EA'),
                  ),
                  label: Text(
                    "Tambah Alamat Baru",
                    style: TextStyle(color: HexColor('#6572EA')),
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(Size(400, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: HexColor('#6572EA'), width: 2),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  width: 400,
                  height: 250,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: HexColor('#6572EA'),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on_outlined,
                              size: 20,
                              color: HexColor('#6572EA'),
                            ),
                            SizedBox(width: 8.0),
                            Text(
                              '$label',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                  color: HexColor('#6572EA')),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('$nama_pengguna'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('$phone'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('$alamat'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('$detail_alamat'),
                      ),
                      SizedBox(height: 16.0),
                      Center(
                          child: ElevatedButton(
                        onPressed: _navigateToUbahAlamat,
                        child: Text(
                          'Ubah Alamat',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              HexColor('#6572EA')),
                        ),
                      )),
                    ],
                  ),
                )
              ],
            ),
          )),
        ));
  }
}
