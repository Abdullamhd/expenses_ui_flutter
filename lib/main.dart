import 'package:flutter/material.dart';
import 'package:uiflutter/widgets/card_selection.dart';
import 'package:uiflutter/widgets/expense_section.dart';
import 'package:uiflutter/widgets/header.dart';

import 'data.dart';

void main(){
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: primaryColor,
        body: Column(
          children: [
            Container(
              height: 200,
              child: WalletHeader(),
            ),
            Expanded(
              child:CardSelection(),
            ),
            Expanded(
              child: ExpenseSection()
            )
          ],
        ),
      ),
    );
  }
}
