// import 'dart:convert';
//
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:pikhs_user/shared/utils/dependency_injection/di_container.dart';
//
// class LocalStorage {
//   static final LocalStorage _instance = LocalStorage._internal();
//
//   // using a factory is important
//   // because it promises to return _an_ object of this type
//   // but it doesn't promise to make a new one.
//   factory LocalStorage() {
//     return _instance;
//   }
//
//   // This named constructor is the "real" constructor
//   // It'll be called exactly once, by the static property assignment above
//   // it's also private, so it can only be called in this class
//   LocalStorage._internal();
//
//   final FlutterSecureStorage _storageInstance =
//       getItInstance.get<FlutterSecureStorage>();
//
// /*-----------Local Storage Keys------------*/
//   final String _cacheAutoLoginKey = "cache_auto_login_key";
//   final String _isAdminKey = "is_admin_key";
//   final String _bearerToken = "bearer_token";
//   final String _loginCred = "login_cred";
//
//   //
//   bool isAdminLogin = false;
//   String bearerToken = "";
//
//   Future<void> writeAutoLoginKey({required String autoLogin}) async {
//     await _storageInstance.write(
//       key: _cacheAutoLoginKey,
//       value: autoLogin,
//     );
//   }
//
//   Future<String> readAutoLoginKey() async {
//     try {
//       return await _storageInstance.read(key: _cacheAutoLoginKey) ?? "";
//     } catch (e) {
//       return "false";
//     }
//   }
//
//   Future<void> writeIsAdminKey({required String isAdmin}) async {
//     isAdminLogin = isAdmin == 'true';
//     await _storageInstance.write(
//       key: _isAdminKey,
//       value: isAdmin,
//     );
//   }
//
//   Future<bool> readIsAdminKey() async {
//     try {
//       isAdminLogin =
//           'true' == (await _storageInstance.read(key: _isAdminKey) ?? '');
//       return isAdminLogin;
//     } catch (e) {
//       return false;
//     }
//   }
//
//   /*Clear whole app data from local storage*/
//
//   Future<void> clearLocalStorage() async {
//     _storageInstance.deleteAll();
//   }
//
//   Future<void> writeBearerToken({required String token}) async {
//     bearerToken = token;
//     await _storageInstance.write(
//       key: _bearerToken,
//       value: token,
//     );
//   }
//
//   Future<String> readBearerToken() async {
//     return await _storageInstance.read(key: _bearerToken) ?? "";
//   }
//
//   Future<void> writeLoginCred({required Map<String, dynamic> cred}) async {
//     await _storageInstance.write(
//       key: _loginCred,
//       value: jsonEncode(cred),
//     );
//   }
//
//   Future<Map<String, dynamic>> readLoginCred() async {
//     return jsonDecode(await _storageInstance.read(key: _loginCred) ?? "");
//   }
// }
