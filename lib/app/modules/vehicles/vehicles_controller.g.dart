// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicles_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$VehiclesController on _VehiclesControllerBase, Store {
  final _$selectedVehiclesAtom =
      Atom(name: '_VehiclesControllerBase.selectedVehicles');

  @override
  List<String> get selectedVehicles {
    _$selectedVehiclesAtom.reportRead();
    return super.selectedVehicles;
  }

  @override
  set selectedVehicles(List<String> value) {
    _$selectedVehiclesAtom.reportWrite(value, super.selectedVehicles, () {
      super.selectedVehicles = value;
    });
  }

  final _$qtdSelecionadosAtom =
      Atom(name: '_VehiclesControllerBase.qtdSelecionados');

  @override
  int get qtdSelecionados {
    _$qtdSelecionadosAtom.reportRead();
    return super.qtdSelecionados;
  }

  @override
  set qtdSelecionados(int value) {
    _$qtdSelecionadosAtom.reportWrite(value, super.qtdSelecionados, () {
      super.qtdSelecionados = value;
    });
  }

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

  final _$_VehiclesControllerBaseActionController =
      ActionController(name: '_VehiclesControllerBase');

  @override
  void fetchVehicles() {
    final _$actionInfo = _$_VehiclesControllerBaseActionController.startAction(
        name: '_VehiclesControllerBase.fetchVehicles');
    try {
      return super.fetchVehicles();
    } finally {
      _$_VehiclesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selectVehicle({String uuid}) {
    final _$actionInfo = _$_VehiclesControllerBaseActionController.startAction(
        name: '_VehiclesControllerBase.selectVehicle');
    try {
      return super.selectVehicle(uuid: uuid);
    } finally {
      _$_VehiclesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deselectedVehicle({String uuid}) {
    final _$actionInfo = _$_VehiclesControllerBaseActionController.startAction(
        name: '_VehiclesControllerBase.deselectedVehicle');
    try {
      return super.deselectedVehicle(uuid: uuid);
    } finally {
      _$_VehiclesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetSelectedVehiclesList() {
    final _$actionInfo = _$_VehiclesControllerBaseActionController.startAction(
        name: '_VehiclesControllerBase.resetSelectedVehiclesList');
    try {
      return super.resetSelectedVehiclesList();
    } finally {
      _$_VehiclesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedVehicles: ${selectedVehicles},
qtdSelecionados: ${qtdSelecionados},
vehicleModelList: ${vehicleModelList}
    ''';
  }
}
