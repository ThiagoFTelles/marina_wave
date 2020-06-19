import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marinawave/app/utils/constants.dart';

class StatusContainer extends StatelessWidget {
  final Widget child;

  const StatusContainer({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.0,
      padding: EdgeInsets.only(top: 20, bottom: 20, left: 5, right: 5),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: kBlue,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: child,
    );
  }
}
