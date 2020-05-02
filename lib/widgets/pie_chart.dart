import 'dart:math';

import 'package:flutter/material.dart';
import 'package:uiflutter/data.dart';

class PiChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      padding: EdgeInsets.only(right:8.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: shadows,
        color: primaryColor,
      ),
      child: Stack(
        children: [
        CustomPaint(

          foregroundPainter: PiChartPainter(),
          child: Container(),
        )
          ,
          Center(
            child: Container(
              height: 70,
              width: 70 ,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: shadows,
                color: primaryColor,
              ),
            ),
          )

        ],
      ),
    );
  }
}

class PiChartPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    Offset center  = Offset(size.width /2 , size.height /2);
    double radius = min(size.width /2 , size.height /2);
    var paint = new Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth =  100 ;

    double total = 0 ;

    expenses.forEach((element) {
      total += element['amount'];

    });

    var start = -pi / 4;


    for(int i = 0 ; i < expenses.length ; i ++){
      var currentExpense = expenses[i];
      var sweepRadius = (currentExpense['amount'] / total) * 2 * pi  ;
      paint.color = pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: center,radius: radius), start, sweepRadius, false, paint);
      start += sweepRadius ;

    }

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true ;
  }

}