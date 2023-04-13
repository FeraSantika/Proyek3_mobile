import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../common/theme_helper.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class UbahAlamat extends StatefulWidget {
  final String nama_pengguna;
  final String phone;
  final String alamat;
  final String detail_alamat;
  final String label;
  UbahAlamat(
      {required this.nama_pengguna,
      required this.phone,
      required this.alamat,
      required this.detail_alamat,
      required this.label});

  @override
  _UbahAlamatState createState() => _UbahAlamatState();
}

class _UbahAlamatState extends State<UbahAlamat> {
  late TextEditingController _namaController;
  late TextEditingController _phoneController;
  late TextEditingController _alamatController;
  late TextEditingController _detailController;
  late TextEditingController _labelController;

  @override
  void initState() {
    super.initState();
    _namaController = TextEditingController(text: widget.nama_pengguna);
    _phoneController = TextEditingController(text: widget.phone);
    _alamatController = TextEditingController(text: widget.alamat);
    _detailController = TextEditingController(text: widget.detail_alamat);
    _labelController = TextEditingController(text: widget.label);
  }

  @override
  void dispose() {
    _namaController.dispose();
    _phoneController.dispose();
    _alamatController.dispose();
    _detailController.dispose();
    _labelController.dispose();
    super.dispose();
  }

  void _saveForm() {
    final nama_pengguna = _namaController.text;
    final phone = _phoneController.text;
    final alamat = _alamatController.text;
    final detail_alamat = _detailController.text;
    final label = _labelController.text;

    final result = {
      'name': nama_pengguna,
      'phone': phone,
      'address': alamat,
      'detail_alamat': detail_alamat,
      'label': label
    };

    Navigator.pop(context, result);
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
        title: Text("Ubah Alamat"),
        elevation:
            0, // ubah nilai ini menjadi 0 untuk menyembunyikan elevasi AppBar
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: Icon(Icons.check_outlined),
            onPressed: _saveForm,
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
                    controller: _namaController,
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
                    controller: _phoneController,
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
                    controller: _labelController,
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
                    controller: _alamatController,
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
                    controller: _detailController,
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
