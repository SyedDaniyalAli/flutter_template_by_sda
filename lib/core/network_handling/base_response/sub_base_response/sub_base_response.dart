import 'package:freezed_annotation/freezed_annotation.dart';

import '../../pagination_response/pagination.dart';

part 'sub_base_response.freezed.dart';
part 'sub_base_response.g.dart';

@freezed
class SubBaseResponse with _$SubBaseResponse {
  @JsonSerializable(fieldRename: FieldRename.snake, checked: true)
  const factory SubBaseResponse({
    required dynamic data,
    required Pagination? pagination,
  }) = _SubBaseResponse;

  factory SubBaseResponse.fromJson(Map<String, dynamic> json) =>
      _$SubBaseResponseFromJson(json);

  @override
  // TODO: implement data
  get data => throw UnimplementedError();

  @override
  // TODO: implement pagination
  Pagination? get pagination => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
