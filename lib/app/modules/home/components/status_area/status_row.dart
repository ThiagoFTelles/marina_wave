import 'package:flutter/material.dart';

import 'file:///E:/2t_consultoria/servicos/marina_wave/flutter_app/marina_wave/lib/app/modules/home/components/status_area/status_row_item.dart';

//ESTE WIDGET PRECISA ESTAR DENTRO DE UM FLEXIBLE().
class StatusRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(20),
      children: <Widget>[
        StatusRowItem(
          totalVehicles: 19,
          statusName: 'Navegando',
        ),
        StatusRowItem(
          totalVehicles: 181,
          statusName: 'Estacionados',
        ),
        StatusRowItem(
          totalVehicles: 1,
          statusName: 'Fora',
        ),
        StatusRowItem(
          totalVehicles: 201,
          statusName: 'Total',
        ),
      ],
    );
  }
}
