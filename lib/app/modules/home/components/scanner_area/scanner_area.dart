import 'package:flutter/material.dart';
import 'package:marinawave/app/utils/constants.dart';

class ScannerArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kBlue,
            ),
            margin: EdgeInsets.only(top: 20, bottom: 20),
            padding: EdgeInsets.all(40),
            child: Image.asset(
              'assets/images/icon_scan.png',
              height: 75,
              color: kGreen,
            ),
          ),
        ],
      ),
    );
  }
}
