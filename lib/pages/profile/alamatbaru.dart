import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../common/theme_helper.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class AlamatBaru extends StatefulWidget {
  const AlamatBaru({Key? key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<AlamatBaru> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text("Tambah Alamat Baru"),
        elevation:
            0, // ubah nilai ini menjadi 0 untuk menyembunyikan elevasi AppBar
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: Icon(Icons.check_outlined),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Tersimpan'),
                    content: Text('Alamat baru berhasil ditambahkan'),
                  );
                },
              ); // kode untuk menyimpan perubahan di sini
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: TextFormField(
                    decoration:
                        ThemeHelper().textInputDecoration('Nama Penerima', ''),
                  ),
                  decoration: ThemeHelper().inputBoxDecorationShaddow(),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: TextFormField(
                    decoration:
                        ThemeHelper().textInputDecoration('Nomor Hp', ''),
                  ),
                  decoration: ThemeHelper().inputBoxDecorationShaddow(),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: TextFormField(
                    decoration: ThemeHelper().textInputDecoration(
                        'Label Alamat', 'Rumah/Apartemen/Kantor/Kos'),
                  ),
                  decoration: ThemeHelper().inputBoxDecorationShaddow(),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: TextFormField(
                    decoration: ThemeHelper().textInputDecoration(
                        'Alamat', 'Kecamatan, Kota, Provinsi'),
                  ),
                  decoration: ThemeHelper().inputBoxDecorationShaddow(),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: TextFormField(
                    decoration: ThemeHelper().textInputDecoration(
                        'Detail Alamat', 'Nama jalan, gedung, No. rumah'),
                  ),
                  decoration: ThemeHelper().inputBoxDecorationShaddow(),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
