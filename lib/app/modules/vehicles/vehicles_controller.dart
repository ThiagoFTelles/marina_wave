import 'package:marinawave/app/shared/repositories/vehicles_repository.dart';
import 'package:mobx/mobx.dart';

part 'vehicles_controller.g.dart';

class VehiclesController = _VehiclesControllerBase with _$VehiclesController;

abstract class _VehiclesControllerBase with Store {
  VehiclesRepository repository;

  @observable
  List<String> selectedVehicles = [];

  @observable
  int qtdSelecionados = 0;

  @observable
  var vehicleModelList;

  _VehiclesControllerBase({this.repository}) {
    fetchVehicles();
  }

  @action
  void fetchVehicles() {
    vehicleModelList = repository.getMarinaVehicles().asObservable();
    resetSelectedVehiclesList();
  }

  @action
  void selectVehicle({String uuid}) {
    selectedVehicles.contains(uuid)
        ? print("embarcação já estava selecionada")
        : selectedVehicles.add(uuid);

    qtdSelecionados++;
  }

  @action
  void deselectedVehicle({String uuid}) {
    selectedVehicles.contains(uuid)
        ? selectedVehicles.removeWhere((listItemUuid) => listItemUuid == uuid)
        : print("embarcação não estava selecionada");

    qtdSelecionados--;
  }

  @action
  void resetSelectedVehiclesList() {
    selectedVehicles = [];
    qtdSelecionados = 0;
  }
}
