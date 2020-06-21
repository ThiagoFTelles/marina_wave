import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'file:///E:/2t_consultoria/servicos/marina_wave/flutter_app/marina_wave/lib/app/modules/home/components/status_area/status_row_item.dart';

class StatusRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(20),
        dragStartBehavior: DragStartBehavior.down,
        children: <Widget>[
          StatusRowItem(
            totalVehicles: 19,
            statusName: 'Navegando',
            assetPng: 'icon_navegando',
            imageSize: 30,
            border: false,
          ),
          StatusRowItem(
            totalVehicles: 181,
            statusName: 'Estacionados',
            assetPng: 'icon_estacionados',
            imageSize: 55,
            border: false,
          ),
          StatusRowItem(
            totalVehicles: 1,
            statusName: 'Fora',
            assetPng: 'icon_fora',
            imageSize: 40,
            border: false,
          ),
          StatusRowItem(
            totalVehicles: 201,
            statusName: 'Total',
            assetPng: 'icon_total',
            imageSize: 50,
            border: false,
          ),
          StatusRowItem(
            totalVehicles: 12,
            statusName: 'Desuso',
            assetPng: 'icon_total',
            imageSize: 50,
            border: true,
          ),
        ],
      ),
    );
  }
}
