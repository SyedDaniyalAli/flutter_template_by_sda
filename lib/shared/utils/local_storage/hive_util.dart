import 'package:hive_ce_flutter/adapters.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class HiveUtil {
  static HiveUtil? _instance;
  static HiveInterface? _hive;

  HiveUtil._internal();

  factory HiveUtil() {
    _instance ??= HiveUtil._internal();
    return _instance!;
  }

  /// Initialize Hive with Flutter support
  Future<void> init([List<TypeAdapter>? adapters]) async {
    final dir = await getApplicationDocumentsDirectory();
    await Hive.initFlutter(dir.path);
    if (adapters != null) {
      for (final adapter in adapters) {
        Hive.registerAdapter(adapter);
      }
    }
  }

  /// Initialize IsolatedHive with Flutter support for multi-isolate scenarios
  Future<void> initIsolated([List<TypeAdapter>? adapters]) async {
    final dir = await getApplicationDocumentsDirectory();
    await IsolatedHive.initFlutter(subDirectory: dir.path);
    if (adapters != null) {
      for (final adapter in adapters) {
        IsolatedHive.registerAdapter(adapter); // Remove await - it returns void
      }
    }
  }

  /// Open a regular Hive box
  Future<Box<T>> openBox<T>(String boxName) async {
    return await Hive.openBox<T>(boxName);
  }

  /// Open an IsolatedHive box for multi-isolate support
  Future<IsolatedBox<T>> openIsolatedBox<T>(String boxName) async {
    return await IsolatedHive.openBox<T>(boxName);
  }

  /// Close a box
  Future<void> closeBox(String boxName) async {
    await Hive.box(boxName).close();
  }

  /// Close an isolated box
  Future<void> closeIsolatedBox(String boxName) async {
    final box = await IsolatedHive.openBox(boxName);
    await box.close();
  }

  /// Delete a box from disk
  Future<void> deleteBox(String boxName) async {
    await Hive.deleteBoxFromDisk(boxName);
  }

  /// Check if box exists
  bool boxExists(String boxName) {
    return Hive.isBoxOpen(boxName);
  }

  /// Add an object to the box
  Future<int> add<T>(Box<T> box, T value) async {
    return await box.add(value);
  }

  /// Put an object with a key
  Future<void> put<T>(Box<T> box, dynamic key, T value) async {
    await box.put(key, value);
  }

  /// Get an object by key
  Future<T?> get<T>(Box<T> box, dynamic key) async {
    return box.get(key);
  }

  /// Get all objects
  List<T> getAll<T>(Box<T> box) {
    return box.values.toList();
  }

  /// Get object at index
  T? getAt<T>(Box<T> box, int index) {
    return box.getAt(index);
  }

  /// Put object at index
  Future<void> putAt<T>(Box<T> box, int index, T value) async {
    await box.putAt(index, value);
  }

  /// Delete an object by key
  Future<void> delete<T>(Box<T> box, dynamic key) async {
    await box.delete(key);
  }

  /// Delete object at index
  Future<void> deleteAt<T>(Box<T> box, int index) async {
    await box.deleteAt(index);
  }

  /// Delete all objects in the box
  Future<void> clear<T>(Box<T> box) async {
    await box.clear();
  }

  /// Get all keys from box
  Iterable<dynamic> getKeys<T>(Box<T> box) {
    return box.keys;
  }

  /// Get box length
  int getLength<T>(Box<T> box) {
    return box.length;
  }

  /// Check if box is empty
  bool isEmpty<T>(Box<T> box) {
    return box.isEmpty;
  }

  /// Check if box is not empty
  bool isNotEmpty<T>(Box<T> box) {
    return box.isNotEmpty;
  }

  /// Check if key exists in box
  bool containsKey<T>(Box<T> box, dynamic key) {
    return box.containsKey(key);
  }

  /// Open a BoxCollection
  Future<BoxCollection> openBoxCollection(
    Set<String> boxNames, {
    String? collectionName,
  }) async {
    final dir = await getApplicationDocumentsDirectory();
    return await BoxCollection.open(
      collectionName ?? 'default_collection',
      boxNames,
      path: dir.path,
    );
  }

  /// Open a BoxCollection with encryption support
  Future<BoxCollection> openEncryptedBoxCollection(
    Set<String> boxNames, {
    required String collectionName,
    required HiveCipher key,
  }) async {
    final dir = await getApplicationDocumentsDirectory();
    return await BoxCollection.open(
      collectionName,
      boxNames,
      path: dir.path,
      key: key,
    );
  }

  /// Store objects in BoxCollection
  Future<void> putInCollection<T>(
    BoxCollection collection,
    String boxName,
    dynamic key,
    T value,
  ) async {
    final box = await collection.openBox<T>(boxName);
    await box.put(key, value);
  }

  /// Get object from BoxCollection
  Future<T?> getFromCollection<T>(
    BoxCollection collection,
    String boxName,
    dynamic key,
  ) async {
    final box = await collection.openBox<T>(boxName);
    return await box.get(key);
  }

  /// Delete object from BoxCollection
  Future<void> deleteFromCollection<T>(
    BoxCollection collection,
    String boxName,
    dynamic key,
  ) async {
    final box = await collection.openBox<T>(boxName);
    await box.delete(key);
  }

  /// Get all objects from BoxCollection
  Future<List<T>> getAllFromCollection<T>(
    BoxCollection collection,
    String boxName,
  ) async {
    final box = await collection.openBox<T>(boxName);
    final valuesMap = await box.getAllValues();
    return valuesMap.values.cast<T>().toList();
  }

  /// Get multiple objects by keys from BoxCollection
  Future<List<T?>> getMultipleFromCollection<T>(
    BoxCollection collection,
    String boxName,
    List<String> keys,
  ) async {
    final box = await collection.openBox<T>(boxName);
    return await box.getAll(keys);
  }

  /// Get all keys from BoxCollection
  Future<List<String>> getAllKeysFromCollection(
    BoxCollection collection,
    String boxName,
  ) async {
    final box = await collection.openBox(boxName);
    return await box.getAllKeys();
  }

  /// Get all values as Map from BoxCollection
  Future<Map<String, T>> getAllValuesMapFromCollection<T>(
    BoxCollection collection,
    String boxName,
  ) async {
    final box = await collection.openBox<T>(boxName);
    return await box.getAllValues();
  }

  /// Delete multiple objects from BoxCollection
  Future<void> deleteMultipleFromCollection(
    BoxCollection collection,
    String boxName,
    List<String> keys,
  ) async {
    final box = await collection.openBox(boxName);
    await box.deleteAll(keys);
  }

  /// Clear all data from BoxCollection box
  Future<void> clearBoxInCollection(
    BoxCollection collection,
    String boxName,
  ) async {
    final box = await collection.openBox(boxName);
    await box.clear();
  }

  /// Execute operations in a transaction
  /// USAGE:
  /// () async {
  //     await box.put('key1', data1);
  //     await box.put('key2', data2);
  //   },
  Future<void> executeTransaction(
    BoxCollection collection,
    Future<void> Function() operations,
    List<String> boxNames, {
    bool readOnly = false,
  }) async {
    await collection.transaction(
      () async => await operations(),
      boxNames: boxNames,
      readOnly: readOnly,
    );
  }
}
