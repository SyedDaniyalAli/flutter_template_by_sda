import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_request.freezed.dart';
part 'base_request.g.dart';

@freezed
class BaseRequest with _$BaseRequest {
  @JsonSerializable(fieldRename: FieldRename.snake, checked: true)
  const factory BaseRequest({
    @Default(1) int paginate,
    @Default(1) int page,
    @Default(20) int perPage,
    @Default(0) int? id,
    String? filterBy,
    dynamic filterValue,
    String? query,
    bool? searchByDefinition,
  }) = _BaseRequest;

  factory BaseRequest.fromJson(Map<String, dynamic> json) =>
      _$BaseRequestFromJson(json);
}

extension BaseRequestExtension on BaseRequest {
  /// Converts the request model into query parameters for HTTP requests
  Map<String, String> toQueryParameters() {
    final Map<String, String> params = {
      'paginate': paginate.toString(),
      'page': page.toString(),
      'perPage': perPage.toString(),
      'id': id.toString(),
      'query': query.toString(),
      'search_by_definition': searchByDefinition == true ? '1' : '0',
    };

    if (filterBy != null && filterValue != null) {
      params['filterBy'] = filterBy!;
      params['filterValue'] = filterValue!;
    }

    return params;
  }
}
