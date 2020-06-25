import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marinawave/app/utils/constants.dart';
import 'package:marinawave/app/utils/widgets/flexible_text.dart';

class VehicleSummary extends StatelessWidget {
  final String vehicleName;
  final String ownerName;
  final String vehicleModel;

  VehicleSummary(
      {@required this.vehicleName,
      @required this.ownerName,
      @required this.vehicleModel});

  @override
  Widget build(BuildContext context) {
//    return ListTile(title: Text(this.name));
    return Container(
      margin: EdgeInsets.all(10),
      child: FlatButton(
        onPressed: () {
          Modular.to.pushNamed("/vehicles");
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: kBlue,
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/images/icon_estacionados.png',
                    height: 50,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '$vehicleName'.toUpperCase(),
                      style: kSummaryInfoTextStyle,
                    ),
                    FlexibleText(
                      style: kSummaryInfoTextStyle,
                      text: '$ownerName'.toUpperCase(),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlexibleText(
                  style: kSummaryHeaderTextStyle,
                  text: '$ownerName'.toUpperCase(),
                ),
                Checkbox(
                  //TODO: colocar este checkbox em um widget separado com um controller
                  onChanged: (bool value) {},
                  value: false,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
