import 'package:marinawave/app/shared/repositories/vehicles_repository.dart';
import 'package:mobx/mobx.dart';

part 'vehicles_controller.g.dart';

class VehiclesController = _VehiclesControllerBase with _$VehiclesController;

abstract class _VehiclesControllerBase with Store {
  VehiclesRepository repository;

  @observable
  var vehicleModelList;

  _VehiclesControllerBase({this.repository}) {
    fetchVehicles();
  }

  @action
  fetchVehicles() {
    vehicleModelList = repository.getMarinaVehicles().asObservable();
  }

  @observable
  Map<String, dynamic> vehiclesMap = {
    "f94ff19f-9abe-45e9-98f1-898a5f6d0b0d": {
      "selected": false,
      "id": "1",
      "uuid": "f94ff19f-9abe-45e9-98f1-898a5f6d0b0d",
      "name": "Hulk",
      "owner_name": "Hagadir da silva sauro e joao bosco",
      "status": "parked",
      "last_run": "2020-03-16 17:18:49",
      "brand": "Yamaha",
      "model": "ABC123",
      "year": "2018",
      "register_number": "CDF2004ASD1234657",
      "marina_id": "1",
      "created_at": "2019-04-04 18:28:52",
      "updated_at": "2020-03-16 17:24:07",
      "deleted_at": "null",
      "gas_percentage": "95",
      "navigation_hours": "112",
      "belongings": "1 Colete."
    },
    "12ac8e5a-2428-4e76-9485-2f3905c247c5": {
      "selected": true,
      "id": "2",
      "uuid": "12ac8e5a-2428-4e76-9485-2f3905c247c5",
      "name": "Flexa",
      "owner_name": "Andrea",
      "status": "parked",
      "last_run": "2019-12-15 18:03:12",
      "brand": "Seadoo",
      "model": "Assasfghj",
      "year": "2009",
      "register_number": "SDDFGSGGCH",
      "marina_id": "1",
      "created_at": "2019-04-05 13:34:56",
      "updated_at": "2019-12-15 18:03:12",
      "deleted_at": "null",
      "gas_percentage": "10",
      "navigation_hours": "200",
      "belongings": "2 coletes"
    }
  };

  @action
  selectVehicleWidget({int index}) async {
    print(index);
    print(await vehicleModelList.value[index].name);
    bool selectValue = await vehicleModelList.value[index].selected;
    vehicleModelList.value[index].selected = !selectValue;
//    final selectedVehicleModel =
//        vehicleModelList.firstWhere((item) => item.uuid == uuid, orElse: null);
//    if (selectedVehicleModel != null) {
//      selectedVehicleModel.selected = true;
//    }
  }

  @action
  switchSelect() {
    //TODO: fazer uma lista com os uuids selecionados e depois alterar o status deles
//    vehiclesMap['f94ff19f-9abe-45e9-98f1-898a5f6d0b0d']['selected'] = true;
    dynamic value = vehicleModelList;
    print('value');
    print(value);
//    vehicleModelList[0]['selected'] = !value;
    print('switchCheck()');
  }

//  @observable
//  Map<String, dynamic> vehiclesMap = {};

//  @action
//  addVehicle({String uuid, dynamic vehicle}) {
//    vehiclesMap[uuid] = vehicle;
//  }
//
//  @action
//  updateVehicle({String uuid, dynamic prop, dynamic newValue}) {
//    vehiclesMap[uuid][prop] = newValue;
//  }
}
