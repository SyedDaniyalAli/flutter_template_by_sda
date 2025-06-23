import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(
    varName: 'API_BASE_URL',
    obfuscate: true,
  )
  static String baseUrl = _Env.baseUrl;

  @EnviedField(
    varName: 'REGION',
    obfuscate: true,
  )
  static String region = _Env.region;

  @EnviedField(
    varName: 'BUCKET_NAME',
    obfuscate: true,
  )
  static String bucketName = _Env.bucketName;

  @EnviedField(
    varName: 'ACCESS_KEY_ID',
    obfuscate: true,
  )
  static String accessKeyId = _Env.accessKeyId;

  @EnviedField(
    varName: 'SECRET_ACCESS',
    obfuscate: true,
  )
  static String secretAccessKey = _Env.secretAccessKey;
}
