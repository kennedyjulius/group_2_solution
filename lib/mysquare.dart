import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  const MySquare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 300,
        color: Colors.amber,
      ),
    );
  
  }
}