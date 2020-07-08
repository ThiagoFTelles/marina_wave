import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marinawave/app/app_widget.dart';
import 'package:marinawave/app/modules/home/home_module.dart';
import 'package:marinawave/app/modules/vehicle/vehicle_controller.dart';
import 'package:marinawave/app/modules/vehicle/vehicle_module.dart';
import 'package:marinawave/app/modules/vehicles/vehicles_controller.dart';
import 'package:marinawave/app/modules/vehicles/vehicles_module.dart';
import 'package:marinawave/app/shared/repositories/localstorage/local_storage_interface.dart';
import 'package:marinawave/app/shared/repositories/localstorage/local_storage_share.dart';
import 'package:marinawave/app/shared/repositories/vehicles_repository.dart';
import 'package:marinawave/app/utils/constants.dart';

import 'app_controller.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => VehicleController()),
//        Bind((i) => HomeController(repository: i.get<VehiclesRepository>())),
//        Bind((i) => HomeController(),
        Bind(
            (i) => VehiclesController(repository: i.get<VehiclesRepository>())),
        Bind((i) => VehiclesRepository(dio: i.get<Dio>())),
        Bind((i) => Dio(
            BaseOptions(baseUrl: URL_BASE, receiveDataWhenStatusError: true))),
        Bind<ILocalStorage>((i) => LocalStorageShared()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
        Router("/vehicles", module: VehiclesModule()),
        Router("/vehicle", module: VehicleModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
