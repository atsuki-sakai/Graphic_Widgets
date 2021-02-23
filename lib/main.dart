import 'package:flutter/material.dart';
import 'package:manipulations/graphic/box_decoration.dart';
import 'package:manipulations/graphic/custom_painter.dart';
import 'package:manipulations/graphic/rotated_box.dart';
import 'package:manipulations/graphic/transform.dart';
import 'graphic/opacity.dart';

void main() {
  runApp(Base(child: CCustomPainter()));
}

class Base extends StatelessWidget {
  Base({@required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(child: child),
      ),
    );
  }
}

