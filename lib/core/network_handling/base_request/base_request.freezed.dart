// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseRequest _$BaseRequestFromJson(Map<String, dynamic> json) {
  return _BaseRequest.fromJson(json);
}

/// @nodoc
mixin _$BaseRequest {
  int get paginate => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get filterBy => throw _privateConstructorUsedError;
  dynamic get filterValue => throw _privateConstructorUsedError;
  String? get query => throw _privateConstructorUsedError;
  bool? get searchByDefinition => throw _privateConstructorUsedError;

  /// Serializes this BaseRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseRequestCopyWith<BaseRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseRequestCopyWith<$Res> {
  factory $BaseRequestCopyWith(
          BaseRequest value, $Res Function(BaseRequest) then) =
      _$BaseRequestCopyWithImpl<$Res, BaseRequest>;
  @useResult
  $Res call(
      {int paginate,
      int page,
      int perPage,
      int? id,
      String? filterBy,
      dynamic filterValue,
      String? query,
      bool? searchByDefinition});
}

/// @nodoc
class _$BaseRequestCopyWithImpl<$Res, $Val extends BaseRequest>
    implements $BaseRequestCopyWith<$Res> {
  _$BaseRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paginate = null,
    Object? page = null,
    Object? perPage = null,
    Object? id = freezed,
    Object? filterBy = freezed,
    Object? filterValue = freezed,
    Object? query = freezed,
    Object? searchByDefinition = freezed,
  }) {
    return _then(_value.copyWith(
      paginate: null == paginate
          ? _value.paginate
          : paginate // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      filterBy: freezed == filterBy
          ? _value.filterBy
          : filterBy // ignore: cast_nullable_to_non_nullable
              as String?,
      filterValue: freezed == filterValue
          ? _value.filterValue
          : filterValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      searchByDefinition: freezed == searchByDefinition
          ? _value.searchByDefinition
          : searchByDefinition // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseRequestImplCopyWith<$Res>
    implements $BaseRequestCopyWith<$Res> {
  factory _$$BaseRequestImplCopyWith(
          _$BaseRequestImpl value, $Res Function(_$BaseRequestImpl) then) =
      __$$BaseRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int paginate,
      int page,
      int perPage,
      int? id,
      String? filterBy,
      dynamic filterValue,
      String? query,
      bool? searchByDefinition});
}

/// @nodoc
class __$$BaseRequestImplCopyWithImpl<$Res>
    extends _$BaseRequestCopyWithImpl<$Res, _$BaseRequestImpl>
    implements _$$BaseRequestImplCopyWith<$Res> {
  __$$BaseRequestImplCopyWithImpl(
      _$BaseRequestImpl _value, $Res Function(_$BaseRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paginate = null,
    Object? page = null,
    Object? perPage = null,
    Object? id = freezed,
    Object? filterBy = freezed,
    Object? filterValue = freezed,
    Object? query = freezed,
    Object? searchByDefinition = freezed,
  }) {
    return _then(_$BaseRequestImpl(
      paginate: null == paginate
          ? _value.paginate
          : paginate // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      filterBy: freezed == filterBy
          ? _value.filterBy
          : filterBy // ignore: cast_nullable_to_non_nullable
              as String?,
      filterValue: freezed == filterValue
          ? _value.filterValue
          : filterValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      searchByDefinition: freezed == searchByDefinition
          ? _value.searchByDefinition
          : searchByDefinition // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, checked: true)
class _$BaseRequestImpl implements _BaseRequest {
  const _$BaseRequestImpl(
      {this.paginate = 1,
      this.page = 1,
      this.perPage = 20,
      this.id = 0,
      this.filterBy,
      this.filterValue,
      this.query,
      this.searchByDefinition});

  factory _$BaseRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseRequestImplFromJson(json);

  @override
  @JsonKey()
  final int paginate;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int perPage;
  @override
  @JsonKey()
  final int? id;
  @override
  final String? filterBy;
  @override
  final dynamic filterValue;
  @override
  final String? query;
  @override
  final bool? searchByDefinition;

  @override
  String toString() {
    return 'BaseRequest(paginate: $paginate, page: $page, perPage: $perPage, id: $id, filterBy: $filterBy, filterValue: $filterValue, query: $query, searchByDefinition: $searchByDefinition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseRequestImpl &&
            (identical(other.paginate, paginate) ||
                other.paginate == paginate) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.filterBy, filterBy) ||
                other.filterBy == filterBy) &&
            const DeepCollectionEquality()
                .equals(other.filterValue, filterValue) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.searchByDefinition, searchByDefinition) ||
                other.searchByDefinition == searchByDefinition));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      paginate,
      page,
      perPage,
      id,
      filterBy,
      const DeepCollectionEquality().hash(filterValue),
      query,
      searchByDefinition);

  /// Create a copy of BaseRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseRequestImplCopyWith<_$BaseRequestImpl> get copyWith =>
      __$$BaseRequestImplCopyWithImpl<_$BaseRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseRequestImplToJson(
      this,
    );
  }
}

abstract class _BaseRequest implements BaseRequest {
  const factory _BaseRequest(
      {final int paginate,
      final int page,
      final int perPage,
      final int? id,
      final String? filterBy,
      final dynamic filterValue,
      final String? query,
      final bool? searchByDefinition}) = _$BaseRequestImpl;

  factory _BaseRequest.fromJson(Map<String, dynamic> json) =
      _$BaseRequestImpl.fromJson;

  @override
  int get paginate;
  @override
  int get page;
  @override
  int get perPage;
  @override
  int? get id;
  @override
  String? get filterBy;
  @override
  dynamic get filterValue;
  @override
  String? get query;
  @override
  bool? get searchByDefinition;

  /// Create a copy of BaseRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseRequestImplCopyWith<_$BaseRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
