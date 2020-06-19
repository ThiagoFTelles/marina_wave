import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marinawave/app/modules/home/components/status_area/status_container.dart';
import 'package:marinawave/app/utils/constants.dart';

class StatusRowItem extends StatelessWidget {
  final String statusName;
  final int totalVehicles;

  const StatusRowItem(
      {Key key, @required this.statusName, @required this.totalVehicles})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatusContainer(
      child: FlatButton(
        onPressed: () => null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Icon(
                  Icons.search,
                  size: 30,
                ),
              ],
            ),
            Text(
              '$totalVehicles',
              style: kNumberTextStyle,
            ),
            Text(
              '$statusName',
              style: kLabelTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
