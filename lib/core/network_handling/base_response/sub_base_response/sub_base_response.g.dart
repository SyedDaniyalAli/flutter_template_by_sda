// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubBaseResponseImpl _$$SubBaseResponseImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SubBaseResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$SubBaseResponseImpl(
          data: $checkedConvert('data', (v) => v),
          pagination: $checkedConvert(
              'pagination',
              (v) => v == null
                  ? null
                  : Pagination.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$SubBaseResponseImplToJson(
        _$SubBaseResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pagination': instance.pagination,
    };
