import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marinawave/app/shared/components/checkbox/checkbox_widget.dart';
import 'package:marinawave/app/utils/constants.dart';
import 'package:marinawave/app/utils/widgets/flexible_text.dart';

class VehicleSummary extends StatelessWidget {
  final String vehicleName;
  final String ownerName;
  final String model;
  final bool selected;
  final int index;

  VehicleSummary({
    @required this.vehicleName,
    @required this.ownerName,
    @required this.model,
    @required this.selected,
    @required this.index,
  });

//  static VehiclesController vehiclesController = Modular.get();

  int maxStringSize(String string, int max) {
    return string.length > max ? max : string.length;
  }

  @override
  Widget build(BuildContext context) {
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                      child: Image.asset(
                        'assets/images/icon_estacionados.png',
                        height: 35,
                        color: kTextColor,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '$vehicleName'.toUpperCase(),
                          style: kSummaryInfoTextStyle,
                        ),
                        Text(
                          '${model.substring(1, maxStringSize('$model', 14))}${model.length > 14 ? '...' : ''}',
                          style: kSummaryInfoTextStyle,
                        ),
                      ],
                    ),
                  ],
                ),
                CheckboxWidget(
                  index: index,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
