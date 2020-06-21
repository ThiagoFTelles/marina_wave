import 'package:flutter/material.dart';
import 'package:marinawave/app/modules/home/components/status_area/status_container.dart';
import 'package:marinawave/app/utils/constants.dart';

class StatusRowItem extends StatelessWidget {
  final String statusName;
  final int totalVehicles;
  final String assetPng;
  final double imageSize;
  final bool border;

  const StatusRowItem(
      {Key key,
      @required this.statusName,
      @required this.totalVehicles,
      @required this.assetPng,
      @required this.imageSize,
      this.border})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatusContainer(
      border: border,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            '$totalVehicles',
            style: kNumberTextStyle,
          ),
          border
              ? Icon(
                  Icons.warning,
                  size: 45,
                  color: kYellow,
                )
              : Image.asset(
                  'assets/images/$assetPng.png',
                  height: imageSize,
                ),
        ],
      ),
    );
  }
}
