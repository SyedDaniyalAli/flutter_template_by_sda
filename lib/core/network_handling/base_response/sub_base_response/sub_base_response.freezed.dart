// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_base_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubBaseResponse {

 dynamic get data; Pagination? get pagination;
/// Create a copy of SubBaseResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubBaseResponseCopyWith<SubBaseResponse> get copyWith => _$SubBaseResponseCopyWithImpl<SubBaseResponse>(this as SubBaseResponse, _$identity);

  /// Serializes this SubBaseResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubBaseResponse&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),pagination);

@override
String toString() {
  return 'SubBaseResponse(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $SubBaseResponseCopyWith<$Res>  {
  factory $SubBaseResponseCopyWith(SubBaseResponse value, $Res Function(SubBaseResponse) _then) = _$SubBaseResponseCopyWithImpl;
@useResult
$Res call({
 dynamic data, Pagination? pagination
});


$PaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$SubBaseResponseCopyWithImpl<$Res>
    implements $SubBaseResponseCopyWith<$Res> {
  _$SubBaseResponseCopyWithImpl(this._self, this._then);

  final SubBaseResponse _self;
  final $Res Function(SubBaseResponse) _then;

/// Create a copy of SubBaseResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? pagination = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination?,
  ));
}
/// Create a copy of SubBaseResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $PaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [SubBaseResponse].
extension SubBaseResponsePatterns on SubBaseResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubBaseResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubBaseResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubBaseResponse value)  $default,){
final _that = this;
switch (_that) {
case _SubBaseResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubBaseResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SubBaseResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( dynamic data,  Pagination? pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubBaseResponse() when $default != null:
return $default(_that.data,_that.pagination);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( dynamic data,  Pagination? pagination)  $default,) {final _that = this;
switch (_that) {
case _SubBaseResponse():
return $default(_that.data,_that.pagination);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( dynamic data,  Pagination? pagination)?  $default,) {final _that = this;
switch (_that) {
case _SubBaseResponse() when $default != null:
return $default(_that.data,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, checked: true)
class _SubBaseResponse implements SubBaseResponse {
  const _SubBaseResponse({required this.data, required this.pagination});
  factory _SubBaseResponse.fromJson(Map<String, dynamic> json) => _$SubBaseResponseFromJson(json);

@override final  dynamic data;
@override final  Pagination? pagination;

/// Create a copy of SubBaseResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubBaseResponseCopyWith<_SubBaseResponse> get copyWith => __$SubBaseResponseCopyWithImpl<_SubBaseResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubBaseResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubBaseResponse&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),pagination);

@override
String toString() {
  return 'SubBaseResponse(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$SubBaseResponseCopyWith<$Res> implements $SubBaseResponseCopyWith<$Res> {
  factory _$SubBaseResponseCopyWith(_SubBaseResponse value, $Res Function(_SubBaseResponse) _then) = __$SubBaseResponseCopyWithImpl;
@override @useResult
$Res call({
 dynamic data, Pagination? pagination
});


@override $PaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$SubBaseResponseCopyWithImpl<$Res>
    implements _$SubBaseResponseCopyWith<$Res> {
  __$SubBaseResponseCopyWithImpl(this._self, this._then);

  final _SubBaseResponse _self;
  final $Res Function(_SubBaseResponse) _then;

/// Create a copy of SubBaseResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? pagination = freezed,}) {
  return _then(_SubBaseResponse(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination?,
  ));
}

/// Create a copy of SubBaseResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $PaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}

// dart format on
