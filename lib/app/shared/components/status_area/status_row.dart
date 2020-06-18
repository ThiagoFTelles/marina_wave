import 'package:flutter/material.dart';
import 'package:marinawave/app/shared/components/status_area/status_row_item.dart';

//ESTE WIDGET PRECISA ESTAR DENTRO DE UM FLEXIBLE().
class StatusRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(38),
      children: <Widget>[
        StatusRowItem(
          totalVehicles: 19,
          statusName: 'Navegando',
          showWarn: false,
        ),
        StatusRowItem(
          totalVehicles: 181,
          statusName: 'Estacionados',
          showWarn: true,
        ),
        StatusRowItem(
          totalVehicles: 201,
          statusName: 'Total',
          showWarn: true,
        ),
        StatusRowItem(
          totalVehicles: 1,
          statusName: 'Fora',
          showWarn: false,
        ),
      ],
    );
  }
}
