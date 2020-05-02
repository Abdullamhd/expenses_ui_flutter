import 'package:flutter/material.dart';

import '../data.dart';

class CardDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            width: 250,
            child: Image.asset('assets/master_card.png'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                color: primaryColor,
                boxShadow: shadows,
                borderRadius: BorderRadius.all(Radius.circular(50))


              ),
            ),
          ),


        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(bottom:30.0,left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('*** *** ***',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                    Text('1930',style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),),
                  ],
                ),
                Text('PLATINUM CARD',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),)
              ],
            ),
          ),
        )
      ],
    );
  }
}
