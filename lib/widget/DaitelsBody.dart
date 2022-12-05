import 'package:flutter/material.dart';
import '../models/product.dart';
import '../constants.dart';

class DaitelsBody extends StatelessWidget {
  final Product product;
  const DaitelsBody({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kPrimaryColor,
      ),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 100),
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            child: Image.asset(
              product.image,
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 2,
            ),
          ),
          Center(
            child: Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    product.title,
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    product.description,
                    style: TextStyle(
                      fontSize: 15,
                    ),
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
                  ElevatedButton(onPressed: () {}, child: Text('شراء'))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
