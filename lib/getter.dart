import 'dart:async' show Future;
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

Future<String> loadAsset() async {
  return await json.decode('key.json').cast<Map<String, dynamic>>();
}
