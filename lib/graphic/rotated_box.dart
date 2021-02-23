import 'package:flutter/material.dart';

class RRotatedBox extends StatefulWidget {
  @override
  _RRotatedBoxState createState() => _RRotatedBoxState();
}

class _RRotatedBoxState extends State<RRotatedBox> {
  int _turns;
  double _value;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _turns = 0;
    _value = 0.0;
  }

  void _onChanged(double value) {
    setState(() {
      _value = value;
      _turns = _value.toInt();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
              value: _value,
              onChanged: _onChanged,
              min: 0.0,
              max: 4.0,
            ),
            SizedBox(
              height: 50,
            ),
            RotatedBox(
              quarterTurns: _turns,
              child: Text(
                'Rotated Box.',
                style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
