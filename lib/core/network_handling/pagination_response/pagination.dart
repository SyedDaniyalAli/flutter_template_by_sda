import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';
part 'pagination.g.dart';

@freezed
class Pagination with _$Pagination {
  @JsonSerializable(fieldRename: FieldRename.snake, checked: true)
  const factory Pagination({
    int? total,
    @JsonKey(name: 'per_page') int? perPage,
    int? current,
    int? first,
    int? last,
    int? previous,
    int? next,
    int? from,
    int? to,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);

  @override
  // TODO: implement current
  int? get current => throw UnimplementedError();

  @override
  // TODO: implement first
  int? get first => throw UnimplementedError();

  @override
  // TODO: implement from
  int? get from => throw UnimplementedError();

  @override
  // TODO: implement last
  int? get last => throw UnimplementedError();

  @override
  // TODO: implement next
  int? get next => throw UnimplementedError();

  @override
  // TODO: implement perPage
  int? get perPage => throw UnimplementedError();

  @override
  // TODO: implement previous
  int? get previous => throw UnimplementedError();

  @override
  // TODO: implement to
  int? get to => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }

  @override
  // TODO: implement total
  int? get total => throw UnimplementedError();
}
