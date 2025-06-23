import 'dart:developer';

import 'package:dio/dio.dart';

import '../../shared/constants/env.dart';

class DioClient {
  static final DioClient _instance = DioClient._internal();
  late Dio dio;

  factory DioClient() {
    return _instance;
  }

  DioClient._internal() {
    dio = Dio(
      BaseOptions(
        baseUrl: Env.baseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        headers: {"Accept": "application/json"},
      ),
    );

    // Add interceptors
    dio.interceptors.add(_authInterceptor());
    dio.interceptors.add(_loggingInterceptor());
  }

  // GET Request
  Future<Response> get(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await dio.get(
        endpoint,
        queryParameters: queryParameters,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // POST Request
  Future<Response> post(String endpoint, {Map<String, dynamic>? data}) async {
    try {
      final response = await dio.post(endpoint, data: data);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // PUT Request
  Future<Response> put(String endpoint, {Map<String, dynamic>? data}) async {
    try {
      final response = await dio.put(endpoint, data: data);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // DELETE Request
  Future<Response> delete(String endpoint, {Map<String, dynamic>? data}) async {
    try {
      final response = await dio.delete(endpoint, data: data);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // PATCH Request (partial update)
  Future<Response> patch(String endpoint, {Map<String, dynamic>? data}) async {
    try {
      final response = await dio.patch(endpoint, data: data);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // HEAD Request (for checking existence or metadata of resource)
  Future<Response> head(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await dio.head(
        endpoint,
        queryParameters: queryParameters,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // OPTIONS Request (for checking allowed methods)
  Future<Response> options(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await dio.request(
        endpoint,
        options: Options(method: 'OPTIONS'),
        queryParameters: queryParameters,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Usage:
  // FormData formData = FormData.fromMap({
  //   'file': await MultipartFile.fromFile('path_to_your_file', filename: 'file_name.jpg'),
  //   'otherKey': 'value',
  // });

  // POST Multipart (for uploading files)
  Future<Response> postMultipart(String endpoint, FormData formData) async {
    try {
      final response = await dio.post(endpoint, data: formData);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // PUT Multipart (for uploading files)
  Future<Response> putMultipart(String endpoint, FormData formData) async {
    try {
      final response = await dio.put(endpoint, data: formData);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Custom Method for Streaming
  Future<Response> download(
    String url,
    String savePath, {
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await dio.download(
        url,
        savePath,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Custom Method for Streaming Upload
  Future<Response> upload(
    String endpoint,
    FormData formData, {
    ProgressCallback? onSendProgress,
  }) async {
    try {
      final response = await dio.post(
        endpoint,
        data: formData,
        onSendProgress: onSendProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Authentication Interceptor (Example: Adding Bearer Token)
  InterceptorsWrapper _authInterceptor() {
    return InterceptorsWrapper(
      onRequest: (options, handler) {
        // options.headers["Authorization"] = "Bearer YOUR_TOKEN_HERE";
        return handler.next(options);
      },
      onResponse: (response, handler) {
        return handler.next(response);
      },
      onError: (DioException e, handler) {
        log("❌ API Error: ${e.response?.statusCode} - ${e.message}");
        return handler.next(e);
      },
    );
  }

  // Logging Interceptor for debugging
  LogInterceptor _loggingInterceptor() {
    return LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
      logPrint: (object) => log('$object'),
    );
  }
}
