import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marinawave/app/modules/vehicles/vehicles_controller.dart';

class CheckboxWidget extends StatefulWidget {
  final int index;

  CheckboxWidget({Key key, @required this.index}) : super(key: key);

  @override
  _CheckboxWidgetState createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  final VehiclesController vehiclesController = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Container(
        child: Checkbox(
          onChanged: (bool selected) {
            vehiclesController.selectVehicleWidget(index: widget.index);
            print('Checkbox changed to $selected');
          },
          value:
              vehiclesController.vehicleModelList.value[widget.index].selected,
        ),
//        Text(vehiclesController
//            .vehicleModelList.value[index].selected
//            .toString()),
      );
    });
  }
}
