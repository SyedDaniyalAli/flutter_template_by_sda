// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_base_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubBaseResponse _$SubBaseResponseFromJson(Map<String, dynamic> json) {
  return _SubBaseResponse.fromJson(json);
}

/// @nodoc
mixin _$SubBaseResponse {
  dynamic get data => throw _privateConstructorUsedError;
  Pagination? get pagination => throw _privateConstructorUsedError;

  /// Serializes this SubBaseResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubBaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubBaseResponseCopyWith<SubBaseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubBaseResponseCopyWith<$Res> {
  factory $SubBaseResponseCopyWith(
          SubBaseResponse value, $Res Function(SubBaseResponse) then) =
      _$SubBaseResponseCopyWithImpl<$Res, SubBaseResponse>;
  @useResult
  $Res call({dynamic data, Pagination? pagination});

  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$SubBaseResponseCopyWithImpl<$Res, $Val extends SubBaseResponse>
    implements $SubBaseResponseCopyWith<$Res> {
  _$SubBaseResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubBaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ) as $Val);
  }

  /// Create a copy of SubBaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubBaseResponseImplCopyWith<$Res>
    implements $SubBaseResponseCopyWith<$Res> {
  factory _$$SubBaseResponseImplCopyWith(_$SubBaseResponseImpl value,
          $Res Function(_$SubBaseResponseImpl) then) =
      __$$SubBaseResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic data, Pagination? pagination});

  @override
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$SubBaseResponseImplCopyWithImpl<$Res>
    extends _$SubBaseResponseCopyWithImpl<$Res, _$SubBaseResponseImpl>
    implements _$$SubBaseResponseImplCopyWith<$Res> {
  __$$SubBaseResponseImplCopyWithImpl(
      _$SubBaseResponseImpl _value, $Res Function(_$SubBaseResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubBaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$SubBaseResponseImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, checked: true)
class _$SubBaseResponseImpl implements _SubBaseResponse {
  const _$SubBaseResponseImpl({required this.data, required this.pagination});

  factory _$SubBaseResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubBaseResponseImplFromJson(json);

  @override
  final dynamic data;
  @override
  final Pagination? pagination;

  @override
  String toString() {
    return 'SubBaseResponse(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubBaseResponseImpl &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), pagination);

  /// Create a copy of SubBaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubBaseResponseImplCopyWith<_$SubBaseResponseImpl> get copyWith =>
      __$$SubBaseResponseImplCopyWithImpl<_$SubBaseResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubBaseResponseImplToJson(
      this,
    );
  }
}

abstract class _SubBaseResponse implements SubBaseResponse {
  const factory _SubBaseResponse(
      {required final dynamic data,
      required final Pagination? pagination}) = _$SubBaseResponseImpl;

  factory _SubBaseResponse.fromJson(Map<String, dynamic> json) =
      _$SubBaseResponseImpl.fromJson;

  @override
  dynamic get data;
  @override
  Pagination? get pagination;

  /// Create a copy of SubBaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubBaseResponseImplCopyWith<_$SubBaseResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
