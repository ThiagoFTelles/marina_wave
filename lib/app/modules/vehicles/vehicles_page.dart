import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marinawave/app/shared/components/nav_drawer.dart';
import 'package:marinawave/app/shared/components/page_header.dart';
import 'package:marinawave/app/utils/constants.dart';

import 'vehicles_controller.dart';

class VehiclesPage extends StatefulWidget {
  final String title;
  const VehiclesPage({Key key, this.title = "Vehicles"}) : super(key: key);

  @override
  _VehiclesPageState createState() => _VehiclesPageState();
}

class _VehiclesPageState
    extends ModularState<VehiclesPage, VehiclesController> {
  //use 'controller' variable to access controller
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: NavDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 15),
          child: Column(
            children: <Widget>[
              PageHeader(
                scaffoldKey: _scaffoldKey,
              ),
              Container(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      'Estacionados',
                      style: kHeaderTextStyle,
                    ),
                    Image.asset(
                      'assets/images/icon_estacionados.png',
                      height: 50,
                      color: kTextColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
