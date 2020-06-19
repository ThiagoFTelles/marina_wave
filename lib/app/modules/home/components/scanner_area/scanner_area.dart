import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marinawave/app/utils/constants.dart';

class ScannerArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kBlue,
            ),
            margin: EdgeInsets.only(top: 20, bottom: 20),
            padding: EdgeInsets.all(40),
            child: SvgPicture.asset(
              'assets/images/qr_code_scanner.svg',
              color: kGreen,
              semanticsLabel: 'Scanner',
              height: 60,
            ),
          ),
          Text(
            'SCAN',
            style: kLargeButtonTextStyle,
          ),
        ],
      ),
    );
  }
}
