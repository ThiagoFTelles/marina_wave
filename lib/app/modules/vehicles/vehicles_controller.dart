import 'package:marinawave/app/shared/repositories/vehicles_repository.dart';
import 'package:mobx/mobx.dart';

part 'vehicles_controller.g.dart';

class VehiclesController = _VehiclesControllerBase with _$VehiclesController;

abstract class _VehiclesControllerBase with Store {
  VehiclesRepository repository;

  @observable
  var vehicles;

  _VehiclesControllerBase({this.repository}) {
    fetchVehicles();
  }

  @action
  fetchVehicles() {
    vehicles = repository.getMarinaVehicles().asObservable();
  }
}
