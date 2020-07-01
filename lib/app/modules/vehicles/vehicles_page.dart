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
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    //TODO: Resolver o erro que dá quando saio e entro nesta page de novo. dica: é por causa do resetSelectedVehiclesList();
    controller.resetSelectedVehiclesList();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      List<VehicleModel> vehicleModelList = controller.vehicleModelList.value;
      int qtdSelecionados = controller.qtdSelecionados;
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
                qtdSelecionados > 0
                    ? Container(
                        color: kButtonColor,
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              qtdSelecionados > 1
                                  ? "$qtdSelecionados selecionados"
                                  : "$qtdSelecionados selecionado",
                              style: kSummaryInfoTextStyle,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: kTextColor,
                              size: 35,
                            ),
                          ],
                        ),
                      )
                    : Container(),
                controller.vehicleModelList.error != null
                    ? Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Não foi possível carregar suas embarcações'),
                            Text('VERIFIQUE SUA CONEXÃO COM A INTERNET'),
//                                Text(
//                                    'ERRO: ${controller.vehicleModelList.error}'),
                            RaisedButton(
                              onPressed: () {
                                controller.fetchVehicles();
                              },
                              child: Text('Tentar Novamente'),
                            ),
                          ],
                        ),
                      )
                    : controller.vehicleModelList.value == null
                        ? Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                CircularProgressIndicator(),
                              ],
                            ),
                          )
                        : Expanded(
                            child: ListView.builder(
                              itemCount: vehicleModelList.length,
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              itemBuilder: (_, int index) {
                                return VehicleSummary(
                                    vehicleName: vehicleModelList[index].name,
                                    ownerName:
                                        vehicleModelList[index].owner_name,
                                    model: vehicleModelList[index].model,
                                    uuid: vehicleModelList[index].uuid);
                              },
                            ),
                          ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
