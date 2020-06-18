import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marinawave/app/shared/components/nav_drawer.dart';
import 'package:marinawave/app/shared/components/page_header.dart';

import 'file:///E:/2t_consultoria/servicos/marina_wave/flutter_app/marina_wave/lib/app/shared/components/status_area/status_row.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: NavDrawer(),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            PageHeader(
              scaffoldKey: _scaffoldKey,
            ),
            Flexible(
              child: StatusRow(),
            ),
          ],
        ),
      ),
    );
  }
}
