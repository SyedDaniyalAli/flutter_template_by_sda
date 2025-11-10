// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BaseResponse<T> _$BaseResponseFromJson<T>(Map<String, dynamic> json) =>
    $checkedCreate('_BaseResponse', json, ($checkedConvert) {
      final val = _BaseResponse<T>(
        success: $checkedConvert('success', (v) => v as bool),
        status: $checkedConvert('status', (v) => (v as num).toInt()),
        message: $checkedConvert(
          'message',
          (v) => (v as List<dynamic>).map((e) => e as String).toList(),
        ),
        data: $checkedConvert('data', (v) => v),
      );
      return val;
    });

Map<String, dynamic> _$BaseResponseToJson<T>(_BaseResponse<T> instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
