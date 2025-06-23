// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseRequestImpl _$$BaseRequestImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$BaseRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$BaseRequestImpl(
          paginate:
              $checkedConvert('paginate', (v) => (v as num?)?.toInt() ?? 1),
          page: $checkedConvert('page', (v) => (v as num?)?.toInt() ?? 1),
          perPage:
              $checkedConvert('per_page', (v) => (v as num?)?.toInt() ?? 20),
          id: $checkedConvert('id', (v) => (v as num?)?.toInt() ?? 0),
          filterBy: $checkedConvert('filter_by', (v) => v as String?),
          filterValue: $checkedConvert('filter_value', (v) => v),
          query: $checkedConvert('query', (v) => v as String?),
          searchByDefinition:
              $checkedConvert('search_by_definition', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {
        'perPage': 'per_page',
        'filterBy': 'filter_by',
        'filterValue': 'filter_value',
        'searchByDefinition': 'search_by_definition'
      },
    );

Map<String, dynamic> _$$BaseRequestImplToJson(_$BaseRequestImpl instance) =>
    <String, dynamic>{
      'paginate': instance.paginate,
      'page': instance.page,
      'per_page': instance.perPage,
      'id': instance.id,
      'filter_by': instance.filterBy,
      'filter_value': instance.filterValue,
      'query': instance.query,
      'search_by_definition': instance.searchByDefinition,
    };
