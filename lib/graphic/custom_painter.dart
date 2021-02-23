import 'package:flutter/material.dart';

class CCustomPainter extends StatefulWidget {
  @override
  _CCustomPainterState createState() => _CCustomPainterState();
}

class _painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // All our work will be done.
    final _radius = 100.0;
    final _offSet = Offset(0.0, 75.0);
    final _paint = Paint()
      ..isAntiAlias = true
      ..strokeWidth = 10.0
      ..color = Colors.blue[500]
      ..style = PaintingStyle.stroke;
    final _paint2 = Paint()
      ..isAntiAlias = true
      ..strokeWidth = 10.0
      ..color = Colors.red[500]
      ..style = PaintingStyle.stroke;

    final Offset bodyStart = Offset(0.0, 50.0);
    final Offset bodyEnd = Offset(0.0, 0.0);

    canvas.drawCircle(_offSet, _radius, _paint);
    canvas.drawLine(bodyStart, bodyEnd, _paint);
    canvas.drawLine(Offset(50.0, 60.0), Offset(20.0, 50.0), _paint2);

    final rect = Rect.fromCircle(center: _offSet, radius: _radius);
    final Paint rectPaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.orange
      ..strokeWidth = 10.0
      ..isAntiAlias = true;

    canvas.drawRect(rect, rectPaint);
    canvas.drawArc(rect, 12.0, 50.0, true, _paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class _CCustomPainterState extends State<CCustomPainter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomPaint(
              painter: _painter(),
            ),
            Text(
              'Custom Painter.',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
          ],
        ),
      ),
    );
  }
}
