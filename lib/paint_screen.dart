import 'package:flutter/material.dart';

class PainterScreen extends StatefulWidget {
  const PainterScreen({super.key});

  @override
  State<StatefulWidget> createState() => _PainterScreenState();
}

class _PainterScreenState extends State<PainterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lines'),
      ),
      body: CustomPaint(
        painter: ShapePainter(),
        child: Container(),
      ),
    );
  }
}

class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round;

    Offset centerPoint = Offset(0, size.height / 2);
    canvas.drawCircle(centerPoint, 100, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
