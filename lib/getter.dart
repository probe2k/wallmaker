import 'dart:async' show Future;
import 'dart:convert';

Future<String> loadAsset() async {
  return await json.decode('key.json').cast<Map<String, dynamic>>()["api_key"];
}
