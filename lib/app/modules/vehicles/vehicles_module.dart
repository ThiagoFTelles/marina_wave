import 'vehicles_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'vehicles_page.dart';

class VehiclesModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => VehiclesController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => VehiclesPage()),
      ];

  static Inject get to => Inject<VehiclesModule>.of();
}
