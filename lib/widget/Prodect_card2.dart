import 'package:flutter/material.dart';
import '../constants.dart';
import '../models/product.dart';

class ProdectCard2 extends StatelessWidget {
  const ProdectCard2({required this.product, super.key});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: MediaQuery.of(context).size.width * 0.9,
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      child: InkWell(
        onTap: () {
          proID = product.id - 1;
          Navigator.of(context).pushNamed('Daitels');
        },
        child: Stack(
          children: [
            Center(
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 25),
                      blurRadius: 25,
                      color: Colors.black12,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              height: 160,
              width: MediaQuery.of(context).size.width * 0.40,
              child: Image.asset(product.image),
            ),
            Positioned(
                right: 10,
                top: 20,
                height: 120,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.40,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        product.title,
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        product.subTitle,
                        style: TextStyle(fontSize: 10),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Text(
                          "\$ ${product.price}",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
