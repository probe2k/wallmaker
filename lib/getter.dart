import 'dart:convert';

String loadAsset() {
  return jsonDecode("key.json")["api_key"].toString();
}