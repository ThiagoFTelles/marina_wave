import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marinawave/app/shared/components/nav_drawer.dart';
import 'package:marinawave/app/shared/components/page_header.dart';
import 'package:marinawave/app/shared/components/vehicle/vehicle_summary.dart';
import 'package:marinawave/app/shared/models/vehicle_model.dart';
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
                    Icon(
                      Icons.search,
                      color: kTextColor,
                      size: 40,
                    ),
                  ],
                ),
              ),
              Observer(
                builder: (_) {
                  if (controller.vehicleModelList.error != null) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('ERRO: ${controller.vehicleModelList.error}'),
                        Center(
                          child: RaisedButton(
                            onPressed: () {
                              controller.fetchVehicles();
                            },
                            child: Text('Tentar Novamente'),
                          ),
                        ),
                      ],
                    );
                  } else if (controller.vehicleModelList.value == null) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    List<VehicleModel> vehicleModelList =
                        controller.vehicleModelList.value;

                    return Expanded(
                      child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (_, index) {
                          return ListView(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            physics: ScrollPhysics(),
                            children: controller.vehiclesMap.values
                                .map((vehicle) => VehicleSummary(
                                      vehicleName: vehicle['name'],
                                      ownerName: vehicle['owner_name'],
                                      vehicleModel: vehicle['model'],
                                      selected: vehicle['selected'] ?? false,
//                                      checkboxFunction: (){},
                                    ))
                                .toList(),
                          );
//                  ListTile( title: Text(vehiclesList[index].name),);
                        },
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
