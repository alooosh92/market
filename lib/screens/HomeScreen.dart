import 'package:flutter/material.dart';
import '../constants.dart';
import '../widget/Home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: homeAppBar(),
      body: HomeBody(),
    );
  }
}

AppBar homeAppBar() {
  return AppBar(
    backgroundColor: kPrimaryColor,
    elevation: 0,
    title: Text('مرحباً بكم في متجر الالكترونيات'),
    actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
  );
}
