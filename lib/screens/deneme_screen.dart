import 'package:flutter/material.dart';

class LineupPage extends StatelessWidget {
  const LineupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soccer Team'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: CustomPaint(
          painter: SoccerPitchPainter(),
          child: Container(),
        ),
      ),
    );
  }
}

class SoccerPitchPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromARGB(255, 124, 117, 46)
      ..strokeWidth = 5.0
      ..style = PaintingStyle.stroke;

    final width = size.width;
    final height = size.height;

    const length = 25.0;

    // Draw soccer pitch lines
    canvas.drawRect(Rect.fromLTWH(0, 0, width, height), paint);

    // Draw player positions (example)
    canvas.drawCircle(Offset(width * 0.50, height * 0.92), length, paint);

    canvas.drawCircle(Offset(width * 0.75, height * 0.80), length, paint);
    canvas.drawCircle(Offset(width * 0.50, height * 0.80), length, paint);
    canvas.drawCircle(Offset(width * 0.25, height * 0.80), length, paint);

    canvas.drawCircle(Offset(width * 0.50, height * 0.57), length, paint);
    canvas.drawCircle(Offset(width * 0.15, height * 0.50), length, paint);
    canvas.drawCircle(Offset(width * 0.85, height * 0.50), length, paint);
    canvas.drawCircle(Offset(width * 0.50, height * 0.43), length, paint);

    canvas.drawCircle(Offset(width * 0.30, height * 0.23), length, paint);
    canvas.drawCircle(Offset(width * 0.70, height * 0.23), length, paint);

    canvas.drawCircle(Offset(width * 0.50, height * 0.11), length, paint);
    // canvas.drawCircle(Offset(width * 0.50, height * 0.77), 20.0, paint);
    // canvas.drawCircle(Offset(width * 0.50, height * 0.37), 20.0, paint);
    // canvas.drawCircle(Offset(width * 0.50, height * 0.47), 20.0, paint);
    // Add more player positions as needed

    // You can also add text labels for player positions
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
