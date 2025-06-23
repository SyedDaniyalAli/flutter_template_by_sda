import 'package:dartz/dartz.dart';

import '../../../../core/network_handling/base_request/base_request.dart';
import '../models/search_model.dart';

abstract class HomeRepo {
  Future<Either<String, List<SearchModel>>> searchData({
    required BaseRequest requestEntity,
  });
}
