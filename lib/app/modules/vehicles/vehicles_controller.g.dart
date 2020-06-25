// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicles_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$VehiclesController on _VehiclesControllerBase, Store {
  final _$vehiclesAtom = Atom(name: '_VehiclesControllerBase.vehicles');

  @override
  dynamic get vehicles {
    _$vehiclesAtom.reportRead();
    return super.vehicles;
  }

  @override
  set vehicles(dynamic value) {
    _$vehiclesAtom.reportWrite(value, super.vehicles, () {
      super.vehicles = value;
    });
  }

  final _$_VehiclesControllerBaseActionController =
      ActionController(name: '_VehiclesControllerBase');

  @override
  dynamic fetchVehicles() {
    final _$actionInfo = _$_VehiclesControllerBaseActionController.startAction(
        name: '_VehiclesControllerBase.fetchVehicles');
    try {
      return super.fetchVehicles();
    } finally {
      _$_VehiclesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
vehicles: ${vehicles}
    ''';
  }
}
