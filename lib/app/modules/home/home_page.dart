import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
      body: Observer(
        builder: (_) {
          if (controller.vehicles.error != null) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('ERRO: ${controller.vehicles.error}'),
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
          } else if (controller.vehicles.value == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            var vehiclesList = controller.vehicles.value;

            return ListView.builder(
              itemCount: vehiclesList.length,
              itemBuilder: (_, index) {
                return ListTile(
                  title: Text(vehiclesList[index].name),
                );
              },
            );
          }
        },
      ),
    );

//      SearchList();

//      Scaffold(
//      key: _scaffoldKey,
//      drawer: NavDrawer(),
//      body: SafeArea(
//        child: Padding(
//          padding: const EdgeInsets.only(top: 15, bottom: 15),
//          child: Column(
//            children: <Widget>[
//              PageHeader(
//                scaffoldKey: _scaffoldKey,
//              ),
//              StatusRow(),
//              ScannerArea(),
//            ],
//          ),
//        ),
//      ),
//    );
  }
}
