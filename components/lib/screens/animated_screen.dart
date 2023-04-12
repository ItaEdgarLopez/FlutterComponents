import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void changeShape() {
    final radom = Random();

    _width = radom.nextInt(300).toDouble()+ 70;
    _height = radom.nextInt(300).toDouble()+ 70;
    _color = Color.fromRGBO(
      radom.nextInt(255),
      radom.nextInt(255),
      radom.nextInt(255),
      1 
      );
    _borderRadius = BorderRadius.circular(  radom.nextInt(100).toDouble() + 10 );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOutCubic,
          width: _width,
          height: _height,
          decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child:  Icon(
          Icons.play_circle_outline,
          size: 50,
        ),
        onPressed: changeShape,
      ),
    );
  }
}
