
import 'package:flutter/material.dart';
import '../../../../lib1/models/Product.dart';

import '../../../constants.dart';

class Stock extends StatelessWidget {
  const Stock({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        'Stok Produk : ${product.stock}', // tambahkan tanda kutip dan ubah menjadi string interpolation
          style: TextStyle(height: 1.5),
          textAlign: TextAlign.left,
          ),
    );
  }
}
