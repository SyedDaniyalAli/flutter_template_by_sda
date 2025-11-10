// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubBaseResponse _$SubBaseResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_SubBaseResponse', json, ($checkedConvert) {
      final val = _SubBaseResponse(
        data: $checkedConvert('data', (v) => v),
        pagination: $checkedConvert(
          'pagination',
          (v) =>
              v == null ? null : Pagination.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$SubBaseResponseToJson(_SubBaseResponse instance) =>
    <String, dynamic>{'data': instance.data, 'pagination': instance.pagination};
