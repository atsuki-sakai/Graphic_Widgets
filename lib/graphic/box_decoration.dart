import 'package:flutter/material.dart';

class BBoxDecoration extends StatefulWidget {
  @override
  _BBoxDecorationState createState() => _BBoxDecorationState();
}

class _BBoxDecorationState extends State<BBoxDecoration> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: FlutterLogo(size: 120,),
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(20),
                gradient: RadialGradient(colors: [Colors.green, Colors.blue]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
