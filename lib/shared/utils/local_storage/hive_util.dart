import 'package:hive_ce_flutter/adapters.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class HiveUtil {
  static HiveUtil? _instance;
  static Box? _defaultBox;
  static IsolatedBox? _defaultIsolatedBox;

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
    final box = await Hive.openBox<T>(boxName);
    _defaultBox = box; // Set as default box
    return box;
  }

  /// Open an IsolatedHive box for multi-isolate support
  Future<IsolatedBox<T>> openIsolatedBox<T>(String boxName) async {
    final box = await IsolatedHive.openBox<T>(boxName);
    _defaultIsolatedBox = box; // Set as default isolated box
    return box;
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
  Future<int> add<T>(T value, [Box<T>? box]) async {
    final targetBox = box ?? _defaultBox as Box<T>;
    return await targetBox.add(value);
  }

  /// Put an object with a key
  Future<void> put<T>(dynamic key, T value, [Box<T>? box]) async {
    final targetBox = box ?? _defaultBox as Box<T>;
    await targetBox.put(key, value);
  }

  /// Get an object by key
  Future<T?> get<T>(dynamic key, [Box<T>? box]) async {
    final targetBox = box ?? _defaultBox as Box<T>;
    return targetBox.get(key);
  }

  /// Get all objects
  List<T> getAll<T>([Box<T>? box]) {
    final targetBox = box ?? _defaultBox as Box<T>;
    return targetBox.values.toList();
  }

  /// Get object at index
  T? getAt<T>(int index, [Box<T>? box]) {
    final targetBox = box ?? _defaultBox as Box<T>;
    return targetBox.getAt(index);
  }

  /// Put object at index
  Future<void> putAt<T>(int index, T value, [Box<T>? box]) async {
    final targetBox = box ?? _defaultBox as Box<T>;
    await targetBox.putAt(index, value);
  }

  /// Delete an object by key
  Future<void> delete<T>(dynamic key, [Box<T>? box]) async {
    final targetBox = box ?? _defaultBox as Box<T>;
    await targetBox.delete(key);
  }

  /// Delete object at index
  Future<void> deleteAt<T>(int index, [Box<T>? box]) async {
    final targetBox = box ?? _defaultBox as Box<T>;
    await targetBox.deleteAt(index);
  }

  /// Delete all objects in the box
  Future<void> clear<T>([Box<T>? box]) async {
    final targetBox = box ?? _defaultBox as Box<T>;
    await targetBox.clear();
  }

  /// Get all keys from box
  Iterable<dynamic> getKeys<T>([Box<T>? box]) {
    final targetBox = box ?? _defaultBox as Box<T>;
    return targetBox.keys;
  }

  /// Get box length
  int getLength<T>([Box<T>? box]) {
    final targetBox = box ?? _defaultBox as Box<T>;
    return targetBox.length;
  }

  /// Check if box is empty
  bool isEmpty<T>([Box<T>? box]) {
    final targetBox = box ?? _defaultBox as Box<T>;
    return targetBox.isEmpty;
  }

  /// Check if box is not empty
  bool isNotEmpty<T>([Box<T>? box]) {
    final targetBox = box ?? _defaultBox as Box<T>;
    return targetBox.isNotEmpty;
  }

  /// Check if key exists in box
  bool containsKey<T>(dynamic key, [Box<T>? box]) {
    final targetBox = box ?? _defaultBox as Box<T>;
    return targetBox.containsKey(key);
  }

  // ========== ISOLATED BOX OPERATIONS ==========

  /// Add an object to the isolated box
  Future<int> addIsolated<T>(T value, [IsolatedBox<T>? box]) async {
    final targetBox = box ?? _defaultIsolatedBox as IsolatedBox<T>;
    return await targetBox.add(value);
  }

  /// Put an object with a key in isolated box
  Future<void> putIsolated<T>(
    dynamic key,
    T value, [
    IsolatedBox<T>? box,
  ]) async {
    final targetBox = box ?? _defaultIsolatedBox as IsolatedBox<T>;
    await targetBox.put(key, value);
  }

  /// Get an object by key from isolated box
  Future<T?> getIsolated<T>(dynamic key, [IsolatedBox<T>? box]) async {
    final targetBox = box ?? _defaultIsolatedBox as IsolatedBox<T>;
    return await targetBox.get(key);
  }

  /// Get all objects from isolated box
  Future<List<T>> getAllIsolated<T>([IsolatedBox<T>? box]) async {
    final targetBox = box ?? _defaultIsolatedBox as IsolatedBox<T>;
    final values = await targetBox.values;
    return values.toList();
  }

  /// Get object at index from isolated box
  Future<T?> getAtIsolated<T>(int index, [IsolatedBox<T>? box]) async {
    final targetBox = box ?? _defaultIsolatedBox as IsolatedBox<T>;
    return await targetBox.getAt(index);
  }

  /// Put object at index in isolated box
  Future<void> putAtIsolated<T>(
    int index,
    T value, [
    IsolatedBox<T>? box,
  ]) async {
    final targetBox = box ?? _defaultIsolatedBox as IsolatedBox<T>;
    await targetBox.putAt(index, value);
  }

  /// Delete an object by key from isolated box
  Future<void> deleteIsolated<T>(dynamic key, [IsolatedBox<T>? box]) async {
    final targetBox = box ?? _defaultIsolatedBox as IsolatedBox<T>;
    await targetBox.delete(key);
  }

  /// Delete object at index from isolated box
  Future<void> deleteAtIsolated<T>(int index, [IsolatedBox<T>? box]) async {
    final targetBox = box ?? _defaultIsolatedBox as IsolatedBox<T>;
    await targetBox.deleteAt(index);
  }

  /// Delete all objects in the isolated box
  Future<void> clearIsolated<T>([IsolatedBox<T>? box]) async {
    final targetBox = box ?? _defaultIsolatedBox as IsolatedBox<T>;
    await targetBox.clear();
  }

  /// Get all keys from isolated box
  Future<Iterable<dynamic>> getKeysIsolated<T>([IsolatedBox<T>? box]) async {
    final targetBox = box ?? _defaultIsolatedBox as IsolatedBox<T>;
    return await targetBox.keys;
  }

  /// Get isolated box length
  Future<int> getLengthIsolated<T>([IsolatedBox<T>? box]) async {
    final targetBox = box ?? _defaultIsolatedBox as IsolatedBox<T>;
    return await targetBox.length;
  }

  /// Check if isolated box is empty
  Future<bool> isEmptyIsolated<T>([IsolatedBox<T>? box]) async {
    final targetBox = box ?? _defaultIsolatedBox as IsolatedBox<T>;
    return await targetBox.isEmpty;
  }

  /// Check if isolated box is not empty
  Future<bool> isNotEmptyIsolated<T>([IsolatedBox<T>? box]) async {
    final targetBox = box ?? _defaultIsolatedBox as IsolatedBox<T>;
    return !(await targetBox.isEmpty);
  }

  /// Check if key exists in isolated box
  Future<bool> containsKeyIsolated<T>(
    dynamic key, [
    IsolatedBox<T>? box,
  ]) async {
    final targetBox = box ?? _defaultIsolatedBox as IsolatedBox<T>;
    return await targetBox.containsKey(key);
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
