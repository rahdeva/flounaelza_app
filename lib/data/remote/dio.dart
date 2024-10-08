// ignore_for_file: no_leading_underscores_for_local_identifiers, prefer_collection_literals

import 'package:dio/dio.dart';
import '/data/local/secure/secure_storage_manager.dart';
import 'log_interceptor.dart';

class AppDio {
  Future<Dio> getDIO({
    Map<String, dynamic> headers = const {},
    Duration connectTimeout = const Duration(seconds: 5),
    Duration receiveTimeout = const Duration(seconds: 3),
  }) async {
    final _headers = Map<String, dynamic>.from(headers);
    final token = await SecureStorageManager().getToken() ?? "";
    if (!_headers.containsKey("Authorization") && token.isNotEmpty) {
      _headers["Authorization"] = "Bearer $token";
    }
    var dio = Dio(
      BaseOptions(
        connectTimeout: connectTimeout,
        receiveTimeout: receiveTimeout,
        contentType: "application/json"
      )
    );

    final defaultHeaders = Map<String, dynamic>();
    defaultHeaders.addAll(headers);
    dio.options.headers.addAll(_headers);
    dio.interceptors.add(APILogInterceptor());
    
    return dio;
  }

  Future<Dio> getDIOFile({
    Map<String, dynamic> headers = const {},
    Duration connectTimeout = const Duration(seconds: 5),
    Duration receiveTimeout = const Duration(seconds: 3),
  }) async {
    final _headers = Map<String, dynamic>.from(headers);
    final token = await SecureStorageManager().getToken() ?? "";
    if (!_headers.containsKey("Authorization") && token.isNotEmpty) {
      _headers["Authorization"] = "Bearer $token";
    }
    var dio = Dio(
      BaseOptions(
        connectTimeout: connectTimeout,
        receiveTimeout: receiveTimeout,
        contentType: 'multipart/form-data; boundary=kyaaNakaWaZettaiDame',
      )
    );

    final defaultHeaders = Map<String, dynamic>();
    defaultHeaders.addAll(headers);
    dio.options.headers.addAll(_headers);
    dio.interceptors.add(APILogInterceptor());
    
    return dio;
  }
}