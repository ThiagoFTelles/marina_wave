// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicles_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$VehiclesController on _VehiclesControllerBase, Store {
  final _$vehicleModelListAtom =
      Atom(name: '_VehiclesControllerBase.vehicleModelList');

  @override
  dynamic get vehicleModelList {
    _$vehicleModelListAtom.reportRead();
    return super.vehicleModelList;
  }

  @override
  set vehicleModelList(dynamic value) {
    _$vehicleModelListAtom.reportWrite(value, super.vehicleModelList, () {
      super.vehicleModelList = value;
    });
  }

  final _$vehiclesMapAtom = Atom(name: '_VehiclesControllerBase.vehiclesMap');

  @override
  Map<String, dynamic> get vehiclesMap {
    _$vehiclesMapAtom.reportRead();
    return super.vehiclesMap;
  }

  @override
  set vehiclesMap(Map<String, dynamic> value) {
    _$vehiclesMapAtom.reportWrite(value, super.vehiclesMap, () {
      super.vehiclesMap = value;
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
  dynamic switchCheck() {
    final _$actionInfo = _$_VehiclesControllerBaseActionController.startAction(
        name: '_VehiclesControllerBase.switchCheck');
    try {
      return super.switchCheck();
    } finally {
      _$_VehiclesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
vehicleModelList: ${vehicleModelList},
vehiclesMap: ${vehiclesMap}
    ''';
  }
}
