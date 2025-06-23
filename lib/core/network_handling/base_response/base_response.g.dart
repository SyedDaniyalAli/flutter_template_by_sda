// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseImpl<T> _$$BaseResponseImplFromJson<T>(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$BaseResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$BaseResponseImpl<T>(
          success: $checkedConvert('success', (v) => v as bool),
          status: $checkedConvert('status', (v) => (v as num).toInt()),
          message: $checkedConvert('message',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          data: $checkedConvert('data', (v) => v),
        );
        return val;
      },
    );

Map<String, dynamic> _$$BaseResponseImplToJson<T>(
        _$BaseResponseImpl<T> instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
