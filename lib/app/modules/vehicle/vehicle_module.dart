import 'vehicle_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'vehicle_page.dart';

class VehicleModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => VehicleController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => VehiclePage()),
      ];

  static Inject get to => Inject<VehicleModule>.of();
}
