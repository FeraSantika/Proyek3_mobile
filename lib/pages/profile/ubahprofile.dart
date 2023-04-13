import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../common/theme_helper.dart';

class UbahProfil extends StatefulWidget {
  const UbahProfil({Key? key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<UbahProfil> {
  File? _image;

  Future _getImageFromGallery() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(pickedFile!.path);
    });
// Save the image path in SharedPreferences
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('imagePath', _image!.path);
  }

  @override
  void initState() {
    super.initState();
// Load the saved image path from SharedPreferences
    _loadImagePath();
  }

  Future<void> _loadImagePath() async {
    final prefs = await SharedPreferences.getInstance();
    final imagePath = prefs.getString('imagePath');
    if (imagePath != null) {
      setState(() {
        _image = File(imagePath);
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
        title: Text("Ubah Profil"),
        elevation:
            0, // ubah nilai ini menjadi 0 untuk menyembunyikan elevasi AppBar
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: Icon(Icons.check_outlined),
            onPressed: () {
              // kode untuk menyimpan perubahan di sini
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
                SizedBox(height: 45),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: _image != null
                      ? FileImage(_image!)
                      : AssetImage('assets/images/person.png')
                          as ImageProvider<Object>,
                  backgroundColor: Colors.grey,
                ),
                SizedBox(height: 10),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: _getImageFromGallery,
                        style: ElevatedButton.styleFrom(
                          textStyle: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                          backgroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Icon(Icons.edit, color: Colors.white),
                            SizedBox(width: 8.0),
                            Text('Edit Foto Profil',
                                style: TextStyle(color: HexColor('#6572EA'))),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: TextFormField(
                    decoration: ThemeHelper().textInputDecoration(
                        'Nama Lengkap', 'Masukan Nama Lengkap'),
                  ),
                  decoration: ThemeHelper().inputBoxDecorationShaddow(),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: TextFormField(
                    decoration: ThemeHelper()
                        .textInputDecoration('Nomor HP', 'Masukan Nomor HP'),
                  ),
                  decoration: ThemeHelper().inputBoxDecorationShaddow(),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: TextFormField(
                    decoration: ThemeHelper()
                        .textInputDecoration('Password', 'Ubah Password'),
                  ),
                  decoration: ThemeHelper().inputBoxDecorationShaddow(),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Tersimpan'),
                          content: Text('Data berhasil disimpan'),
                        );
                      },
                    );
                  },
                  child: Text(
                    'SIMPAN',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                    backgroundColor: Color.fromARGB(255, 6, 127, 10),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
