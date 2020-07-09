import 'dart:convert';

String loadAsset() {
  return json.decode('key.json')['api_key'].toString();
}