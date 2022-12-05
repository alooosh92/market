import "package:flutter/material.dart";
import '../constants.dart';
import '../models/product.dart';
import '../widget/DaitelsBody.dart';

class DaitelsScreen extends StatelessWidget {
  const DaitelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        title: Text('التفاصيل'),
      ),
      body: DaitelsBody(
        product: product[proID],
      ),
    );
  }
}
