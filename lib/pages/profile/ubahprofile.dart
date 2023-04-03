import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/profil-bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 45),
                CircleAvatar(
                  radius: 80,
                  backgroundImage: _image != null
                      ? FileImage(_image!)
                      : AssetImage('assets/icons/face.png')
                          as ImageProvider<Object>,
                  backgroundColor: Colors.white,
                ),
                SizedBox(height: 20),
                Text(
                  'Users',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 25),
                Center(
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: _getImageFromGallery,
                          style: ElevatedButton.styleFrom(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                            ),
                            backgroundColor: Color.fromARGB(255, 0, 62, 112),
                            padding: EdgeInsets.symmetric(horizontal: 15.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.camera_alt_outlined),
                              SizedBox(width: 8.0),
                              Text('Ubah Foto'),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () async {
                            final prefs = await SharedPreferences.getInstance();
                            prefs.remove('imagePath');
                            setState(() {
                              _image = null;
                            });
                          },
                          child: Row(
                            children: [
                              Icon(Icons.delete),
                              SizedBox(width: 5),
                              Text('Hapus Foto'),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                            ),
                            backgroundColor: Color.fromARGB(255, 192, 13, 0),
                            padding: EdgeInsets.symmetric(horizontal: 15.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Icon(Icons.update,
                            color: Color.fromARGB(255, 0, 62, 112)),
                        SizedBox(width: 10),
                        Text(
                          'Update Profil',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 62, 112),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(),
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 15.0)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Sign Out'),
                          content: Text('Are you sure you want to sign out?'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(false);
                              },
                              child: Text('No'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(
                                  context,
                                  'login',
                                  (Route<dynamic> route) => false,
                                );
                              },
                              child: Text('Yes'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text('SIGN OUT'),
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                    backgroundColor: Color.fromARGB(255, 0, 62, 112),
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
