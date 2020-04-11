import 'dart:math';

import 'package:flutter/material.dart';
import '../data.dart';

class PieChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: customShadow,
          color: primaryColor
        ),
        child: Stack(
          children: <Widget>[
            CustomPaint(
              foregroundPainter: PieChartPainter(),
              child: Container(),

            ),
            Center(
              child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: customShadow,
                  color: primaryColor
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}


class PieChartPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Offset center = Offset(size.width/2, size.height/2);
    print("Checking size.width = ${size.width} and size.height = ${size.height}");
    double radius = min(size.width/2, size.height/2);
    print("RADIUS = $radius");
    var paint = new Paint()..style=PaintingStyle.stroke..strokeWidth=100.0;

    double total = 0;
    expenses.forEach((element){
      print("WHAT IS AMOUNT? ${element['amount']}");
      total += element['amount'];
    });

    print("TOAL = $total ");
    var startRadian = -pi/2;

    for(int i=0; i<expenses.length; i++){
      var currentExpense = expenses[i];
      var sweepRadian = (currentExpense['amount']/total)*2*pi;
      paint.color=pieColors[i];
      canvas.drawArc(
          Rect.fromCircle(center: center, radius: radius),
          startRadian,
          sweepRadian,
          false,
          paint
      );
      startRadian+=sweepRadian;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}