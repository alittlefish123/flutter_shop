import 'package:flutter/material.dart';

class CarView extends StatefulWidget {
  CarView({Key? key}) : super(key: key);

  @override
  _CarViewState createState() => _CarViewState();
}

class _CarViewState extends State<CarView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('购物车'),
    );
  }
}