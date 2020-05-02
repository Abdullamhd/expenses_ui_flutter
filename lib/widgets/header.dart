import 'package:flutter/material.dart';

import '../data.dart';

class WalletHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Mical Wallet',style: TextStyle(
            fontSize: 25
          ),),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              boxShadow:shadows,
              color: primaryColor,
              shape: BoxShape.circle,
            ),
            child: Stack(
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow:shadows,
                      color: Colors.deepOrange,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      boxShadow:shadows,
                      color: primaryColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Center(
                  child: Icon(Icons.notifications),
                )
              ],
            ),
          ),


        ],
      ),
    );
  }
}
