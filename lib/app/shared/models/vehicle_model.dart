import 'package:flutter/material.dart';

class VehicleModel {
  String id;
  String uuid;
  String name;
  String owner_name;
  String status;
  String last_run;
  String brand;
  String model;
  String year;
  String register_number;
  String marina_id;
  String created_at;
  String updated_at;
  String deleted_at;
  String gas_percentage;
  String navigation_hours;
  String belongings;
  bool selected = false;

  VehicleModel(
      {@required this.id,
      @required this.uuid,
      @required this.name,
      @required this.owner_name,
      @required this.status,
      this.last_run,
      @required this.brand,
      @required this.model,
      this.year,
      @required this.register_number,
      this.marina_id,
      @required this.created_at,
      this.updated_at,
      this.deleted_at,
      this.gas_percentage,
      this.navigation_hours,
      this.belongings,
      this.selected});

  factory VehicleModel.fromJson(Map<String, dynamic> json) {
    return VehicleModel(
        id: json['id'],
        uuid: json['uuid'],
        name: json['name'],
        owner_name: json['owner_name'],
        status: json['status'],
        last_run: json['last_run'],
        brand: json['brand'],
        model: json['model'],
        year: json['year'],
        register_number: json['register_number'],
        marina_id: json['marina_id'],
        created_at: json['created_at'],
        updated_at: json['updated_at'],
        deleted_at: json['deleted_at'],
        gas_percentage: json['gas_percentage'],
        navigation_hours: json['navigation_hours'],
        belongings: json['belongings'],
        selected: false);
  }

  Map<String, dynamic> toJson() => {};
}
