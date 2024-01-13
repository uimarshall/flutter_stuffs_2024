import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class THttpHelper {
  static const String _baseUrl = 'https://jsonplaceholder.typicode.com';

  // Helper method to make HTTP GET request

  static Future<Map<String, dynamic>> get(String urlEndPoint,
      {Map<String, String>? headers}) async {
    try {
      final response =
          await http.get(Uri.parse('$_baseUrl/$urlEndPoint'), headers: headers);
      return _handleResponse(response);
    } catch (e) {
      return _handleResponse(
          http.Response(e.toString(), 500, headers: headers ?? {}));
    }
  }

  // Helper method to make HTTP GET request

  static Future<Map<String, dynamic>> post(String urlEndPoint,
      {Map<String, String>? headers, dynamic data}) async {
    try {
      final response = await http.post(Uri.parse('$_baseUrl/$urlEndPoint'),
          headers: {'Content-Type': 'application/json'},
          body: json.encode(data));
      return _handleResponse(response);
    } catch (e) {
      return _handleResponse(
          http.Response(e.toString(), 500, headers: headers ?? {}));
    }
  }

  // Helper method to make HTTP PUT request

  static Future<Map<String, dynamic>> put(String urlEndPoint,
      {Map<String, String>? headers, dynamic data}) async {
    try {
      final response = await http.put(Uri.parse('$_baseUrl/$urlEndPoint'),
          headers: {'Content-Type': 'application/json'},
          body: json.encode(data));
      return _handleResponse(response);
    } catch (e) {
      return _handleResponse(
          http.Response(e.toString(), 500, headers: headers ?? {}));
    }
  }

  // Helper method to make HTTP DELETE request

  static Future<Map<String, dynamic>> delete(String urlEndPoint,
      {Map<String, String>? headers}) async {
    try {
      final response = await http.delete(Uri.parse('$_baseUrl/$urlEndPoint'),
          headers: headers);
      return _handleResponse(response);
    } catch (e) {
      return _handleResponse(
          http.Response(e.toString(), 500, headers: headers ?? {}));
    }
  }

  // Handle http Response

  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception(
          'Failed to load data from server: ${response.statusCode}');
    }
  }

  // static Future<Map<String, dynamic>> _handleResponse(http.Response response) {
  //   throw UnimplementedError();
  // }

  // static Future<TResponse> get(String url, {Map<String, String> headers}) async {
  //   try {
  //     final response = await http.get(url, headers: headers);
  //     return TResponse(
  //       statusCode: response.statusCode,
  //       body: response.body,
  //     );
  //   } catch (e) {
  //     return TResponse(
  //       statusCode: 500,
  //       body: e.toString(),
  //     );
  //   }
  // }
}
