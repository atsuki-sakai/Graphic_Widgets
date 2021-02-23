import 'package:flutter/material.dart';

// 衝突するためOpacity = Pacity
class OOPacity extends StatefulWidget {
  @override
  _OOPacityState createState() => _OOPacityState();
}

class _OOPacityState extends State<OOPacity> {
  bool _visible;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _visible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Opacity(
            opacity: _visible ? 0.2 : 1.0,
            child: Text(
              'Opacity',
              style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 32,),
          ElevatedButton(
            child: Text('Push.'),
            onPressed: () {
              setState(() {
                _visible = !_visible;
              });
            },
          ),
        ],
      ),
    );
  }
}
