import 'package:flutter/material.dart';
import '../constants.dart';
import '../models/product.dart';
import 'Prodect_card2.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding / 2),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70.0),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  itemBuilder: (context, index) =>
                      ProdectCard2(product: product[index]),
                  itemCount: product.length,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
