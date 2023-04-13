

import 'package:flutter/material.dart';
import '../../../../lib1/models/Product.dart';

import '../../../constants.dart';

class Category extends StatelessWidget {
  const Category({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        'Nama Toko : ${product.category}',
        style: TextStyle(height: 1.5),
        textAlign: TextAlign.left,
      ),
    );
  }
}
