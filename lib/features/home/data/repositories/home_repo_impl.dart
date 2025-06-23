import 'package:dartz/dartz.dart';

import '../../../../core/network_handling/base_request/base_request.dart';
import '../models/search_model.dart';
import '../services/home_service.dart';
import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<String, List<SearchModel>>> searchData({
    required BaseRequest requestEntity,
  }) async {
    final response = await HomeService().searchData(req: requestEntity);
    if (response != null) {
      return Right(
        (response.data as List).map((e) => SearchModel.fromJson(e)).toList(),
      );
    }
    return Future.value(Left('Error in getRoots'));
  }
}
