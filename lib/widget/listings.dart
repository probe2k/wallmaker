import 'package:flutter/material.dart';
import 'package:wallmaker/model/data_model.dart';

Widget listings(List<DataModel> walls, c) {
  return Container(
    padding: EdgeInsets.symmetric(
      horizontal: 10,
    ),
    child: GridView.count(
      shrinkWrap: true,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      crossAxisCount: 2,
      childAspectRatio: 0.5,
      children: walls.map((image) {
        return GridTile(
          child: Container(child: Image.network(image.model.req)),
        );
      }).toList(),
    ),
  );
}
