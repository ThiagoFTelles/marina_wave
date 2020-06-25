import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:marinawave/app/shared/models/vehicle_model.dart';

class VehiclesRepository {
  final Dio dio;

  String token =
      'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjA3YTFiZDA2NDc3YzRlZDA5ZDhiYzdjYWE2N2JkNTQxOWQ5NzZjYzBkYjY3MjExNTBkZTJjYjY3ZjlhZDU2OGRhZDcyN2UxYWFkM2UxY2UyIn0.eyJhdWQiOiIxIiwianRpIjoiMDdhMWJkMDY0NzdjNGVkMDlkOGJjN2NhYTY3YmQ1NDE5ZDk3NmNjMGRiNjcyMTE1MGRlMmNiNjdmOWFkNTY4ZGFkNzI3ZTFhYWQzZTFjZTIiLCJpYXQiOjE1OTE5MzQ0NDMsIm5iZiI6MTU5MTkzNDQ0MywiZXhwIjoxNjIzNDcwNDQzLCJzdWIiOiI3Iiwic2NvcGVzIjpbXX0.AX15C0xiCmivrzPUP5uPJmSDb_yccjk7678QCHTUmcZCmB2yRJHh1hktsCMsIfc1JcpfPYRyORODCjm5jonDmRylaceJ4DwEs34dEuFpV2DyyfzLUEYVK_AGus4Np92gppe3df9ppOB0nFDTQa34xmF5vgJne9oR-CX2AxMgjQXX3HdJJHaxWKNNBPx--fbKt92Vsdc_QVisSbmZlAFooo745-OZJzmXqH31fiRi7nRnD7Gvfj4SkJTw7-WwH4AOrDFGKCFfxw7ASZcnpsfFz54IsVmyzw9Z5HxCQCahoRdcykTIAq3I4LVd57VfAlMjyLBuGQgoV2dbXZaebOdwfPS_OvIhUNR6KsuXtcnGYdc9MSMt79nUQPOoFUyZAsTM0C1IKx3OXLQ8TEqyNv_UmvjBgEx2U7x-NMUhY_joPh9ieIfiJo0KB2PNjsuWGfawfu1L2STd14MQdfNl-h5QTa17pL-D7JON-XKOAiE6kjzSeQB2p7ayjNR_oUpTNFbbhGJTMJ4LuiT26j_hLT7n4IT2Vb27euO4nY1XJDEiHQYXMm-OIcRrAnYs5pwxuUYSYA_22eWg-3TzbylVsgwCbodRdUZJMGSvgwZ7OcV3J51R5uP4HqLLk4K2V-ZSED4w-OS9nsHo03m9ZLfdANqRBOqXi290qmEL3zWFMDgwiUM';

  VehiclesRepository({@required this.dio});

  Future<List<VehicleModel>> getMarinaVehicles() async {
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          ((X509Certificate cert, String host, int port) {
        final isValidHost = host == "marinawave.com.br";
        return isValidHost;
      });
      return client;
    };

    var response = await dio.get('/vehicles',
        options: Options(
          headers: {'Authorization': 'Bearer $token'},
        ));

    List<VehicleModel> vehiclesList = List<VehicleModel>();

    for (var item in (response.data['data']['data'] as List)) {
      VehicleModel vehicle = VehicleModel(
        id: item['id'],
        uuid: item['uuid'],
        name: item['name'],
        owner_name: item['owner_name'],
        status: item['status'],
        last_run: item['last_run'],
        brand: item['brand'],
        model: item['model'],
        year: item['year'],
        register_number: item['register_number'],
        marina_id: item['marina_id'],
        created_at: item['created_at'],
        updated_at: item['updated_at'],
        deleted_at: item['deleted_at'],
        gas_percentage: item['gas_percentage'],
        navigation_hours: item['navigation_hours'],
        belongings: item['belongings'],
      );

      vehiclesList.add(vehicle);
    }

    return vehiclesList;
  }
}
