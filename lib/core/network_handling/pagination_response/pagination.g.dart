// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Pagination _$PaginationFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_Pagination', json, ($checkedConvert) {
      final val = _Pagination(
        total: $checkedConvert('total', (v) => (v as num?)?.toInt()),
        perPage: $checkedConvert('per_page', (v) => (v as num?)?.toInt()),
        current: $checkedConvert('current', (v) => (v as num?)?.toInt()),
        first: $checkedConvert('first', (v) => (v as num?)?.toInt()),
        last: $checkedConvert('last', (v) => (v as num?)?.toInt()),
        previous: $checkedConvert('previous', (v) => (v as num?)?.toInt()),
        next: $checkedConvert('next', (v) => (v as num?)?.toInt()),
        from: $checkedConvert('from', (v) => (v as num?)?.toInt()),
        to: $checkedConvert('to', (v) => (v as num?)?.toInt()),
      );
      return val;
    }, fieldKeyMap: const {'perPage': 'per_page'});

Map<String, dynamic> _$PaginationToJson(_Pagination instance) =>
    <String, dynamic>{
      'total': instance.total,
      'per_page': instance.perPage,
      'current': instance.current,
      'first': instance.first,
      'last': instance.last,
      'previous': instance.previous,
      'next': instance.next,
      'from': instance.from,
      'to': instance.to,
    };
