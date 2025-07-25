import 'dart:developer';

import '../../../../core/network_handling/base_request/base_request.dart';
import '../../../../core/network_handling/base_response/base_response.dart';
import '../../../../core/network_handling/dio_client.dart';
import '../../../../shared/constants/api_routes.dart';
import '../../../../shared/dependency_injection/di_container.dart';

class HomeService {
  Future<BaseResponse<Map<String, dynamic>>?> searchData({
    required BaseRequest req,
  }) async {
    try {
      final dioClient = getItInstance<DioClient>();
      final response = await dioClient.get(
        ApiRoutes.dummyEndpoint,
        queryParameters: req.toQueryParameters(),
      );

      if (response.statusCode == 200) {
        return BaseResponse<Map<String, dynamic>>.fromJson(response.data);
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      log('Error in getRoots: $e');
      throw Exception(e);
    }
  }
}
