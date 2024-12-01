import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  static String id = 'ThirdPage ';
  const ThirdPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child:
            Text('This is the page for Card ', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
