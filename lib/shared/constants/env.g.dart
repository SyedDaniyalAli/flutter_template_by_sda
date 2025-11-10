// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// generated_from: .env
final class _Env {
  static const List<int> _enviedkeybaseUrl = <int>[472599133, 1040682955];

  static const List<int> _envieddatabaseUrl = <int>[472599167, 1040682985];

  static final String baseUrl = String.fromCharCodes(
    List<int>.generate(
      _envieddatabaseUrl.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]),
  );

  static const List<int> _enviedkeyregion = <int>[972966657, 2606244464];

  static const List<int> _envieddataregion = <int>[972966691, 2606244434];

  static final String region = String.fromCharCodes(
    List<int>.generate(
      _envieddataregion.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddataregion[i] ^ _enviedkeyregion[i]),
  );

  static const List<int> _enviedkeybucketName = <int>[1797041068, 735842909];

  static const List<int> _envieddatabucketName = <int>[1797041038, 735842943];

  static final String bucketName = String.fromCharCodes(
    List<int>.generate(
      _envieddatabucketName.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatabucketName[i] ^ _enviedkeybucketName[i]),
  );

  static const List<int> _enviedkeyaccessKeyId = <int>[4226760559, 3470847143];

  static const List<int> _envieddataaccessKeyId = <int>[4226760525, 3470847109];

  static final String accessKeyId = String.fromCharCodes(
    List<int>.generate(
      _envieddataaccessKeyId.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddataaccessKeyId[i] ^ _enviedkeyaccessKeyId[i]),
  );

  static const List<int> _enviedkeysecretAccessKey = <int>[
    154957198,
    1777736795,
  ];

  static const List<int> _envieddatasecretAccessKey = <int>[
    154957228,
    1777736825,
  ];

  static final String secretAccessKey = String.fromCharCodes(
    List<int>.generate(
      _envieddatasecretAccessKey.length,
      (int i) => i,
      growable: false,
    ).map(
      (int i) => _envieddatasecretAccessKey[i] ^ _enviedkeysecretAccessKey[i],
    ),
  );
}
