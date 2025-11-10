import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response.freezed.dart';
part 'base_response.g.dart';

@freezed
class BaseResponse<T> with _$BaseResponse<T> {
  @JsonSerializable(fieldRename: FieldRename.snake, checked: true)
  const factory BaseResponse({
    required bool success,
    required int status,
    required List<String> message,
    required dynamic data,
  }) = _BaseResponse<T>;

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  @override
  // TODO: implement data
  get data => throw UnimplementedError();

  @override
  // TODO: implement message
  List<String> get message => throw UnimplementedError();

  @override
  // TODO: implement status
  int get status => throw UnimplementedError();

  @override
  // TODO: implement success
  bool get success => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
