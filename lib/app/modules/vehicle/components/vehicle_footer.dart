import 'package:flutter/material.dart';
import 'package:marinawave/app/utils/constants.dart';

class VehicleFooter extends StatefulWidget {
  @override
  _VehicleFooterState createState() => _VehicleFooterState();
}

class _VehicleFooterState extends State<VehicleFooter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 45,
      child: Container(
        decoration: BoxDecoration(
          color: kTextColor,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(20.0),
            topRight: const Radius.circular(20.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              'assets/images/icon_navegando.png',
              height: 20,
            ),
            Image.asset(
              'assets/images/icon_estacionados.png',
              height: 35,
              color: kYellow,
            ),
            Image.asset(
              'assets/images/icon_fora.png',
              height: 20,
            ),
            Icon(
              Icons.toys,
              color: Colors.white,
              size: 35,
            ),
            Icon(
              Icons.save,
              color: kBlue,
              size: 35,
            ),
          ],
        ),
      ),
    );
  }
}
