import 'package:flutter/material.dart';
import 'package:marinawave/app/shared/components/page_header.dart';

class SafeAreaApp extends StatelessWidget {
  final scaffoldKey;
  final Widget child;

  const SafeAreaApp({Key key, @required this.scaffoldKey, @required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 15),
        child: Column(
          children: <Widget>[
            PageHeader(
              scaffoldKey: scaffoldKey,
            ),
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
