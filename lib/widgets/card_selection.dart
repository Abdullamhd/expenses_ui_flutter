import 'package:flutter/material.dart';
import 'package:uiflutter/data.dart';
import 'package:uiflutter/widgets/card_detail.dart';


class CardSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Text('Card Selected !!',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,

          ),),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,i){
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                decoration: BoxDecoration(
                  color: primaryColor,
                  boxShadow: shadows,
                  borderRadius: BorderRadius.circular(20)

                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white38,
                            boxShadow: shadows
                        ),
                      ),
                      top: -150,
                      bottom: -200,
                    ),
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white38,
                          boxShadow: shadows
                        ),
                      ),
                      left: -100,
                      top: -100,
                      bottom: -100,
                    ),
                    CardDetail(),

                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
