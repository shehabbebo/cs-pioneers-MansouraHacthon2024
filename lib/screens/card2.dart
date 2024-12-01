import 'package:flutter/material.dart';

class CardPage2 extends StatelessWidget {
  final String num;
  static String id = 'CardPage2';
  const CardPage2({required this.num});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card $num Page'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Text('This is the page for Card $num',
            style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
