import 'package:wallmaker/model/source.dart';

class DataModel {
  String name, ref;
  int id;
  Required model;

  DataModel({this.model, this.name, this.ref, this.id});

  factory DataModel.fromMap(Map<String, dynamic> jsonData) {
    return DataModel(
      model: jsonData["model"],
      ref: jsonData["photographer_url"],
      id: jsonData["photographer_id"],
      name: jsonData["photographer"]
    );
  }
}