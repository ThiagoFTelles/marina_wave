import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marinawave/app/app_widget.dart';
import 'package:marinawave/app/modules/home/home_module.dart';
import 'package:marinawave/app/modules/vehicles/vehicles_module.dart';

import 'app_controller.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
        Router("/vehicles",
            module: VehiclesModule(), transition: TransitionType.rightToLeft),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
