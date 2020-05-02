import 'package:flutter/material.dart';
import 'package:uiflutter/data.dart';
import 'pie_chart.dart';

class ExpenseSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(child: Text('Expenses'),

          margin: EdgeInsets.symmetric(horizontal: 20),
        ),
        Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: expenses.map((e) => Row(
                        children: [
                          CircleAvatar(radius: 5,backgroundColor: pieColors[expenses.indexOf(e)],),
                          SizedBox(width: 10,),
                          Text(e['name'],style: TextStyle(fontSize: 20),)
                        ],
                      )).toList(),
                    ),

                  ),
                ),
                Expanded(
                  flex: 6,
                  child: PiChart(),
                )
              ],
        ),
      ],
    );
  }
}
