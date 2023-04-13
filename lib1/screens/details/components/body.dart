import 'package:flutter/material.dart';
import '../../../../lib1/constants.dart';
import '../../../../lib1/models/Product.dart';
import '../../../../lib1/screens/details/components/category.dart';
import '../../../../lib1/screens/details/components/openingHours.dart';
import '../../../../lib1/screens/details/components/storeAddress.dart';
import '../../../../lib1/screens/details/components/storeName.dart';
import '../../../../lib1/screens/details/components/stock.dart';

import 'add_to_cart.dart';
import 'counter_with_fav_btn.dart';
import 'description.dart';
import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.09,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[// Add this line
                      Description(product: product),
                      StoreName(product: product),
                      StoreAddress(product: product),
                      OpeningHours(product: product),
                      Category(product: product),
                      Stock(product: product),
                      CounterWithFavBtn(),
                      AddToCart(product: product)
                    ],
                  ),
                ),  
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
