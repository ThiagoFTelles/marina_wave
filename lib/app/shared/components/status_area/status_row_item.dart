import 'package:flutter/material.dart';

class StatusRowItem extends StatelessWidget {
  final String statusName;
  final int totalVehicles;
  final bool showWarn;

  const StatusRowItem(
      {Key key,
      @required this.statusName,
      @required this.totalVehicles,
      @required this.showWarn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.0,
      color: Colors.green,
      child: FlatButton(
        onPressed: () => null,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                showWarn
                    ? Icon(
                        Icons.warning,
                        color: Colors.yellowAccent,
                      )
                    : Container(),
                Icon(Icons.search),
              ],
            ),
            Text('$totalVehicles'),
            Text('$statusName'),
          ],
        ),
      ),
    );
  }
}
