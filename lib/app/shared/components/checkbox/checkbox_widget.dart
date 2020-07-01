import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marinawave/app/modules/vehicles/vehicles_controller.dart';
import 'package:marinawave/app/utils/constants.dart';

class CheckboxWidget extends StatefulWidget {
  final String uuid;

  CheckboxWidget({Key key, @required this.uuid}) : super(key: key);

  @override
  _CheckboxWidgetState createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  final VehiclesController vehiclesController = Modular.get();
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Checkbox(
        activeColor: kLogoBlue,
        onChanged: (bool newCheckedValue) {
          setState(() {
            checked = newCheckedValue;
          });
          newCheckedValue
              ? vehiclesController.selectVehicle(uuid: widget.uuid)
              : vehiclesController.deselectedVehicle(uuid: widget.uuid);
        },
        value: checked,
      ),
    );
  }
}
