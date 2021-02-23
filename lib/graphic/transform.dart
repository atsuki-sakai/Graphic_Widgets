import 'package:flutter/material.dart';

class TTransform extends StatefulWidget {
  @override
  _TTransformState createState() => _TTransformState();
}

class _TTransformState extends State<TTransform> {
  double _x;
  double _y;
  double _z;

  @override
  void initState() {
    super.initState();
    _x = 0.0;
    _y = 0.0;
    _z = 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('X'),
              Slider(
                value: _x,
                onChanged: (value) {
                  setState(() {
                    _x = value;
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Y'),
              Slider(
                value: _y,
                onChanged: (value) {
                  setState(() {
                    _y = value;
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Z'),
              Slider(
                value: _z,
                onChanged: (value) {
                  setState(() {
                    _z = value;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Center(
            child: Transform(
              transform: Matrix4.skewY(_y),
              child: Transform(
                transform: Matrix4.skewX(_x),
                child: Transform(
                  transform: Matrix4.rotationZ(_z),
                  child: Text(
                    'Hello world.',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
