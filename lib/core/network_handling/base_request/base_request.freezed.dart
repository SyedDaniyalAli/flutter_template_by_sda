// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BaseRequest {

 int get paginate; int get page; int get perPage; int? get id; String? get filterBy; dynamic get filterValue; String? get query; bool? get searchByDefinition;
/// Create a copy of BaseRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseRequestCopyWith<BaseRequest> get copyWith => _$BaseRequestCopyWithImpl<BaseRequest>(this as BaseRequest, _$identity);

  /// Serializes this BaseRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseRequest&&(identical(other.paginate, paginate) || other.paginate == paginate)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.id, id) || other.id == id)&&(identical(other.filterBy, filterBy) || other.filterBy == filterBy)&&const DeepCollectionEquality().equals(other.filterValue, filterValue)&&(identical(other.query, query) || other.query == query)&&(identical(other.searchByDefinition, searchByDefinition) || other.searchByDefinition == searchByDefinition));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paginate,page,perPage,id,filterBy,const DeepCollectionEquality().hash(filterValue),query,searchByDefinition);

@override
String toString() {
  return 'BaseRequest(paginate: $paginate, page: $page, perPage: $perPage, id: $id, filterBy: $filterBy, filterValue: $filterValue, query: $query, searchByDefinition: $searchByDefinition)';
}


}

/// @nodoc
abstract mixin class $BaseRequestCopyWith<$Res>  {
  factory $BaseRequestCopyWith(BaseRequest value, $Res Function(BaseRequest) _then) = _$BaseRequestCopyWithImpl;
@useResult
$Res call({
 int paginate, int page, int perPage, int? id, String? filterBy, dynamic filterValue, String? query, bool? searchByDefinition
});




}
/// @nodoc
class _$BaseRequestCopyWithImpl<$Res>
    implements $BaseRequestCopyWith<$Res> {
  _$BaseRequestCopyWithImpl(this._self, this._then);

  final BaseRequest _self;
  final $Res Function(BaseRequest) _then;

/// Create a copy of BaseRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paginate = null,Object? page = null,Object? perPage = null,Object? id = freezed,Object? filterBy = freezed,Object? filterValue = freezed,Object? query = freezed,Object? searchByDefinition = freezed,}) {
  return _then(_self.copyWith(
paginate: null == paginate ? _self.paginate : paginate // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,filterBy: freezed == filterBy ? _self.filterBy : filterBy // ignore: cast_nullable_to_non_nullable
as String?,filterValue: freezed == filterValue ? _self.filterValue : filterValue // ignore: cast_nullable_to_non_nullable
as dynamic,query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,searchByDefinition: freezed == searchByDefinition ? _self.searchByDefinition : searchByDefinition // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [BaseRequest].
extension BaseRequestPatterns on BaseRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BaseRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BaseRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BaseRequest value)  $default,){
final _that = this;
switch (_that) {
case _BaseRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BaseRequest value)?  $default,){
final _that = this;
switch (_that) {
case _BaseRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int paginate,  int page,  int perPage,  int? id,  String? filterBy,  dynamic filterValue,  String? query,  bool? searchByDefinition)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BaseRequest() when $default != null:
return $default(_that.paginate,_that.page,_that.perPage,_that.id,_that.filterBy,_that.filterValue,_that.query,_that.searchByDefinition);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int paginate,  int page,  int perPage,  int? id,  String? filterBy,  dynamic filterValue,  String? query,  bool? searchByDefinition)  $default,) {final _that = this;
switch (_that) {
case _BaseRequest():
return $default(_that.paginate,_that.page,_that.perPage,_that.id,_that.filterBy,_that.filterValue,_that.query,_that.searchByDefinition);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int paginate,  int page,  int perPage,  int? id,  String? filterBy,  dynamic filterValue,  String? query,  bool? searchByDefinition)?  $default,) {final _that = this;
switch (_that) {
case _BaseRequest() when $default != null:
return $default(_that.paginate,_that.page,_that.perPage,_that.id,_that.filterBy,_that.filterValue,_that.query,_that.searchByDefinition);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, checked: true)
class _BaseRequest implements BaseRequest {
  const _BaseRequest({this.paginate = 1, this.page = 1, this.perPage = 20, this.id = 0, this.filterBy, this.filterValue, this.query, this.searchByDefinition});
  factory _BaseRequest.fromJson(Map<String, dynamic> json) => _$BaseRequestFromJson(json);

@override@JsonKey() final  int paginate;
@override@JsonKey() final  int page;
@override@JsonKey() final  int perPage;
@override@JsonKey() final  int? id;
@override final  String? filterBy;
@override final  dynamic filterValue;
@override final  String? query;
@override final  bool? searchByDefinition;

/// Create a copy of BaseRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseRequestCopyWith<_BaseRequest> get copyWith => __$BaseRequestCopyWithImpl<_BaseRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BaseRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaseRequest&&(identical(other.paginate, paginate) || other.paginate == paginate)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.id, id) || other.id == id)&&(identical(other.filterBy, filterBy) || other.filterBy == filterBy)&&const DeepCollectionEquality().equals(other.filterValue, filterValue)&&(identical(other.query, query) || other.query == query)&&(identical(other.searchByDefinition, searchByDefinition) || other.searchByDefinition == searchByDefinition));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paginate,page,perPage,id,filterBy,const DeepCollectionEquality().hash(filterValue),query,searchByDefinition);

@override
String toString() {
  return 'BaseRequest(paginate: $paginate, page: $page, perPage: $perPage, id: $id, filterBy: $filterBy, filterValue: $filterValue, query: $query, searchByDefinition: $searchByDefinition)';
}


}

/// @nodoc
abstract mixin class _$BaseRequestCopyWith<$Res> implements $BaseRequestCopyWith<$Res> {
  factory _$BaseRequestCopyWith(_BaseRequest value, $Res Function(_BaseRequest) _then) = __$BaseRequestCopyWithImpl;
@override @useResult
$Res call({
 int paginate, int page, int perPage, int? id, String? filterBy, dynamic filterValue, String? query, bool? searchByDefinition
});




}
/// @nodoc
class __$BaseRequestCopyWithImpl<$Res>
    implements _$BaseRequestCopyWith<$Res> {
  __$BaseRequestCopyWithImpl(this._self, this._then);

  final _BaseRequest _self;
  final $Res Function(_BaseRequest) _then;

/// Create a copy of BaseRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paginate = null,Object? page = null,Object? perPage = null,Object? id = freezed,Object? filterBy = freezed,Object? filterValue = freezed,Object? query = freezed,Object? searchByDefinition = freezed,}) {
  return _then(_BaseRequest(
paginate: null == paginate ? _self.paginate : paginate // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,filterBy: freezed == filterBy ? _self.filterBy : filterBy // ignore: cast_nullable_to_non_nullable
as String?,filterValue: freezed == filterValue ? _self.filterValue : filterValue // ignore: cast_nullable_to_non_nullable
as dynamic,query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,searchByDefinition: freezed == searchByDefinition ? _self.searchByDefinition : searchByDefinition // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
