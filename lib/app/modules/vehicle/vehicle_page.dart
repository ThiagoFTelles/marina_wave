import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marinawave/app/modules/vehicle/components/fuel_area.dart';
import 'package:marinawave/app/modules/vehicle/components/hours_area.dart';
import 'package:marinawave/app/modules/vehicle/components/vehicle_header.dart';

import 'vehicle_controller.dart';

class VehiclePage extends StatefulWidget {
  final String title;
  const VehiclePage({Key key, this.title = "Vehicle"}) : super(key: key);

  @override
  _VehiclePageState createState() => _VehiclePageState();
}

class _VehiclePageState extends ModularState<VehiclePage, VehicleController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            VehicleHeader(),
            HoursArea(),
            FuelArea(),
          ],
        ),
      ),
    );
  }
}
