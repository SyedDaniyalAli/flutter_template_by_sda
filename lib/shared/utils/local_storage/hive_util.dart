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
    try {
      final dir = await getApplicationDocumentsDirectory();
      await Hive.initFlutter('${dir.path}/hive');
      if (adapters != null) {
        for (final adapter in adapters) {
          if (!Hive.isAdapterRegistered(adapter.typeId)) {
            Hive.registerAdapter(adapter);
          }
        }
      }
    } catch (e) {
      throw HiveError('Failed to initialize Hive: $e');
    }
  }

  /// Initialize IsolatedHive with Flutter support for multi-isolate scenarios
  Future<void> initIsolated([List<TypeAdapter>? adapters]) async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      await IsolatedHive.initFlutter(subDirectory: '${dir.path}/isolated_hive');
      if (adapters != null) {
        for (final adapter in adapters) {
          IsolatedHive.registerAdapter(adapter);
        }
      }
    } catch (e) {
      throw HiveError('Failed to initialize IsolatedHive: $e');
    }
  }

  /// Open a regular Hive box
  Future<Box<T>> openBox<T>(String boxName) async {
    try {
      if (boxName.isEmpty) {
        throw ArgumentError('Box name cannot be empty');
      }
      final box = await Hive.openBox<T>(boxName);
      _defaultBox = box;
      return box;
    } catch (e) {
      throw HiveError('Failed to open box "$boxName": $e');
    }
  }

  /// Open an IsolatedHive box for multi-isolate support
  Future<IsolatedBox<T>> openIsolatedBox<T>(String boxName) async {
    try {
      if (boxName.isEmpty) {
        throw ArgumentError('Box name cannot be empty');
      }
      final box = await IsolatedHive.openBox<T>(boxName);
      _defaultIsolatedBox = box;
      return box;
    } catch (e) {
      throw HiveError('Failed to open isolated box "$boxName": $e');
    }
  }

  /// Close a box safely
  Future<void> closeBox(String boxName) async {
    try {
      if (Hive.isBoxOpen(boxName)) {
        await Hive.box(boxName).close();
        if (_defaultBox != null && _defaultBox!.name == boxName) {
          _defaultBox = null;
        }
      }
    } catch (e) {
      throw HiveError('Failed to close box "$boxName": $e');
    }
  }

  /// Close an isolated box safely
  Future<void> closeIsolatedBox(String boxName) async {
    try {
      final box = await IsolatedHive.openBox(boxName);
      await box.close();
      if (_defaultIsolatedBox != null &&
          await _defaultIsolatedBox!.name == boxName) {
        _defaultIsolatedBox = null;
      }
    } catch (e) {
      throw HiveError('Failed to close isolated box "$boxName": $e');
    }
  }

  /// Delete a box from disk safely
  Future<void> deleteBox(String boxName) async {
    try {
      if (Hive.isBoxOpen(boxName)) {
        await Hive.box(boxName).close();
      }
      await Hive.deleteBoxFromDisk(boxName);
      if (_defaultBox != null && _defaultBox!.name == boxName) {
        _defaultBox = null;
      }
    } catch (e) {
      throw HiveError('Failed to delete box "$boxName": $e');
    }
  }

  /// Check if box exists
  bool boxExists(String boxName) {
    try {
      return Hive.isBoxOpen(boxName);
    } catch (e) {
      return false;
    }
  }

  /// Add an object to the box with error handling
  Future<int> add<T>(T value, [Box<T>? box]) async {
    try {
      final targetBox = box ?? _getDefaultBox<T>();
      return await targetBox.add(value);
    } catch (e) {
      throw HiveError('Failed to add value: $e');
    }
  }

  /// Put an object with a key with error handling
  Future<void> put<T>(dynamic key, T value, [Box<T>? box]) async {
    try {
      if (key == null) {
        throw ArgumentError('Key cannot be null');
      }
      final targetBox = box ?? _getDefaultBox<T>();
      await targetBox.put(key, value);
    } catch (e) {
      throw HiveError('Failed to put value with key "$key": $e');
    }
  }

  /// Get an object by key with error handling
  Future<T?> get<T>(dynamic key, [Box<T>? box]) async {
    try {
      if (key == null) {
        throw ArgumentError('Key cannot be null');
      }
      final targetBox = box ?? _getDefaultBox<T>();
      return targetBox.get(key);
    } catch (e) {
      throw HiveError('Failed to get value with key "$key": $e');
    }
  }

  /// Helper method to get default box with null check
  Box<T> _getDefaultBox<T>() {
    if (_defaultBox == null) {
      throw StateError(
        'No default box is open. Please open a box first using openBox()',
      );
    }
    return _defaultBox as Box<T>;
  }

  /// Helper method to get default isolated box with null check
  IsolatedBox<T> _getDefaultIsolatedBox<T>() {
    if (_defaultIsolatedBox == null) {
      throw StateError(
        'No default isolated box is open. Please open an isolated box first using openIsolatedBox()',
      );
    }
    return _defaultIsolatedBox as IsolatedBox<T>;
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
    try {
      final targetBox = box ?? _getDefaultIsolatedBox<T>();
      return await targetBox.add(value);
    } catch (e) {
      throw HiveError('Failed to add value to isolated box: $e');
    }
  }

  /// Put an object with a key in isolated box
  Future<void> putIsolated<T>(
    dynamic key,
    T value, [
    IsolatedBox<T>? box,
  ]) async {
    try {
      if (key == null) {
        throw ArgumentError('Key cannot be null');
      }
      final targetBox = box ?? _getDefaultIsolatedBox<T>();
      await targetBox.put(key, value);
    } catch (e) {
      throw HiveError(
        'Failed to put value with key "$key" in isolated box: $e',
      );
    }
  }

  /// Get an object by key from isolated box
  Future<T?> getIsolated<T>(dynamic key, [IsolatedBox<T>? box]) async {
    try {
      if (key == null) {
        throw ArgumentError('Key cannot be null');
      }
      final targetBox = box ?? _getDefaultIsolatedBox<T>();
      return await targetBox.get(key);
    } catch (e) {
      throw HiveError(
        'Failed to get value with key "$key" from isolated box: $e',
      );
    }
  }

  /// Get all objects from isolated box
  Future<List<T>> getAllIsolated<T>([IsolatedBox<T>? box]) async {
    try {
      final targetBox = box ?? _getDefaultIsolatedBox<T>();
      final values = await targetBox.values;
      return values.toList();
    } catch (e) {
      throw HiveError('Failed to get all values from isolated box: $e');
    }
  }

  /// Get object at index from isolated box
  Future<T?> getAtIsolated<T>(int index, [IsolatedBox<T>? box]) async {
    try {
      if (index < 0) {
        throw ArgumentError('Index cannot be negative');
      }
      final targetBox = box ?? _getDefaultIsolatedBox<T>();
      return await targetBox.getAt(index);
    } catch (e) {
      throw HiveError(
        'Failed to get value at index $index from isolated box: $e',
      );
    }
  }

  /// Put object at index in isolated box
  Future<void> putAtIsolated<T>(
    int index,
    T value, [
    IsolatedBox<T>? box,
  ]) async {
    try {
      if (index < 0) {
        throw ArgumentError('Index cannot be negative');
      }
      final targetBox = box ?? _getDefaultIsolatedBox<T>();
      await targetBox.putAt(index, value);
    } catch (e) {
      throw HiveError(
        'Failed to put value at index $index in isolated box: $e',
      );
    }
  }

  /// Delete an object by key from isolated box
  Future<void> deleteIsolated<T>(dynamic key, [IsolatedBox<T>? box]) async {
    try {
      if (key == null) {
        throw ArgumentError('Key cannot be null');
      }
      final targetBox = box ?? _getDefaultIsolatedBox<T>();
      await targetBox.delete(key);
    } catch (e) {
      throw HiveError(
        'Failed to delete value with key "$key" from isolated box: $e',
      );
    }
  }

  /// Delete object at index from isolated box
  Future<void> deleteAtIsolated<T>(int index, [IsolatedBox<T>? box]) async {
    try {
      if (index < 0) {
        throw ArgumentError('Index cannot be negative');
      }
      final targetBox = box ?? _getDefaultIsolatedBox<T>();
      await targetBox.deleteAt(index);
    } catch (e) {
      throw HiveError(
        'Failed to delete value at index $index from isolated box: $e',
      );
    }
  }

  /// Delete all objects in the isolated box
  Future<void> clearIsolated<T>([IsolatedBox<T>? box]) async {
    try {
      final targetBox = box ?? _getDefaultIsolatedBox<T>();
      await targetBox.clear();
    } catch (e) {
      throw HiveError('Failed to clear isolated box: $e');
    }
  }

  /// Get all keys from isolated box
  Future<Iterable<dynamic>> getKeysIsolated<T>([IsolatedBox<T>? box]) async {
    try {
      final targetBox = box ?? _getDefaultIsolatedBox<T>();
      return await targetBox.keys;
    } catch (e) {
      throw HiveError('Failed to get keys from isolated box: $e');
    }
  }

  /// Get isolated box length
  Future<int> getLengthIsolated<T>([IsolatedBox<T>? box]) async {
    try {
      final targetBox = box ?? _getDefaultIsolatedBox<T>();
      return await targetBox.length;
    } catch (e) {
      throw HiveError('Failed to get length of isolated box: $e');
    }
  }

  /// Check if isolated box is empty
  Future<bool> isEmptyIsolated<T>([IsolatedBox<T>? box]) async {
    try {
      final targetBox = box ?? _getDefaultIsolatedBox<T>();
      return await targetBox.isEmpty;
    } catch (e) {
      throw HiveError('Failed to check if isolated box is empty: $e');
    }
  }

  /// Check if isolated box is not empty
  Future<bool> isNotEmptyIsolated<T>([IsolatedBox<T>? box]) async {
    try {
      final targetBox = box ?? _getDefaultIsolatedBox<T>();
      return !(await targetBox.isEmpty);
    } catch (e) {
      throw HiveError('Failed to check if isolated box is not empty: $e');
    }
  }

  /// Check if key exists in isolated box
  Future<bool> containsKeyIsolated<T>(
    dynamic key, [
    IsolatedBox<T>? box,
  ]) async {
    try {
      if (key == null) {
        throw ArgumentError('Key cannot be null');
      }
      final targetBox = box ?? _getDefaultIsolatedBox<T>();
      return await targetBox.containsKey(key);
    } catch (e) {
      throw HiveError(
        'Failed to check if key "$key" exists in isolated box: $e',
      );
    }
  }

  /// Open a BoxCollection
  Future<BoxCollection> openBoxCollection(
    Set<String> boxNames, {
    String? collectionName,
  }) async {
    try {
      if (boxNames.isEmpty) {
        throw ArgumentError('Box names set cannot be empty');
      }
      final dir = await getApplicationDocumentsDirectory();
      return await BoxCollection.open(
        collectionName ?? 'default_collection',
        boxNames,
        path: dir.path,
      );
    } catch (e) {
      throw HiveError(
        'Failed to open BoxCollection "${collectionName ?? 'default_collection'}": $e',
      );
    }
  }

  /// Open a BoxCollection with encryption support
  Future<BoxCollection> openEncryptedBoxCollection(
    Set<String> boxNames, {
    required String collectionName,
    required HiveCipher key,
  }) async {
    try {
      if (boxNames.isEmpty) {
        throw ArgumentError('Box names set cannot be empty');
      }
      if (collectionName.isEmpty) {
        throw ArgumentError('Collection name cannot be empty');
      }
      final dir = await getApplicationDocumentsDirectory();
      return await BoxCollection.open(
        collectionName,
        boxNames,
        path: dir.path,
        key: key,
      );
    } catch (e) {
      throw HiveError(
        'Failed to open encrypted BoxCollection "$collectionName": $e',
      );
    }
  }

  /// Store objects in BoxCollection
  Future<void> putInCollection<T>(
    BoxCollection collection,
    String boxName,
    dynamic key,
    T value,
  ) async {
    try {
      if (boxName.isEmpty) {
        throw ArgumentError('Box name cannot be empty');
      }
      if (key == null) {
        throw ArgumentError('Key cannot be null');
      }
      final box = await collection.openBox<T>(boxName);
      await box.put(key, value);
    } catch (e) {
      throw HiveError(
        'Failed to put value with key "$key" in collection box "$boxName": $e',
      );
    }
  }

  /// Get object from BoxCollection
  Future<T?> getFromCollection<T>(
    BoxCollection collection,
    String boxName,
    dynamic key,
  ) async {
    try {
      if (boxName.isEmpty) {
        throw ArgumentError('Box name cannot be empty');
      }
      if (key == null) {
        throw ArgumentError('Key cannot be null');
      }
      final box = await collection.openBox<T>(boxName);
      return await box.get(key);
    } catch (e) {
      throw HiveError(
        'Failed to get value with key "$key" from collection box "$boxName": $e',
      );
    }
  }

  /// Delete object from BoxCollection
  Future<void> deleteFromCollection<T>(
    BoxCollection collection,
    String boxName,
    dynamic key,
  ) async {
    try {
      if (boxName.isEmpty) {
        throw ArgumentError('Box name cannot be empty');
      }
      if (key == null) {
        throw ArgumentError('Key cannot be null');
      }
      final box = await collection.openBox<T>(boxName);
      await box.delete(key);
    } catch (e) {
      throw HiveError(
        'Failed to delete value with key "$key" from collection box "$boxName": $e',
      );
    }
  }

  /// Get all objects from BoxCollection
  Future<List<T>> getAllFromCollection<T>(
    BoxCollection collection,
    String boxName,
  ) async {
    try {
      if (boxName.isEmpty) {
        throw ArgumentError('Box name cannot be empty');
      }
      final box = await collection.openBox<T>(boxName);
      final valuesMap = await box.getAllValues();
      return valuesMap.values.cast<T>().toList();
    } catch (e) {
      throw HiveError(
        'Failed to get all values from collection box "$boxName": $e',
      );
    }
  }

  /// Get multiple objects by keys from BoxCollection
  Future<List<T?>> getMultipleFromCollection<T>(
    BoxCollection collection,
    String boxName,
    List<String> keys,
  ) async {
    try {
      if (boxName.isEmpty) {
        throw ArgumentError('Box name cannot be empty');
      }
      if (keys.isEmpty) {
        throw ArgumentError('Keys list cannot be empty');
      }
      final box = await collection.openBox<T>(boxName);
      return await box.getAll(keys);
    } catch (e) {
      throw HiveError(
        'Failed to get multiple values from collection box "$boxName": $e',
      );
    }
  }

  /// Get all keys from BoxCollection
  Future<List<String>> getAllKeysFromCollection(
    BoxCollection collection,
    String boxName,
  ) async {
    try {
      if (boxName.isEmpty) {
        throw ArgumentError('Box name cannot be empty');
      }
      final box = await collection.openBox(boxName);
      return await box.getAllKeys();
    } catch (e) {
      throw HiveError(
        'Failed to get all keys from collection box "$boxName": $e',
      );
    }
  }

  /// Get all values as Map from BoxCollection
  Future<Map<String, T>> getAllValuesMapFromCollection<T>(
    BoxCollection collection,
    String boxName,
  ) async {
    try {
      if (boxName.isEmpty) {
        throw ArgumentError('Box name cannot be empty');
      }
      final box = await collection.openBox<T>(boxName);
      return await box.getAllValues();
    } catch (e) {
      throw HiveError(
        'Failed to get all values map from collection box "$boxName": $e',
      );
    }
  }

  /// Delete multiple objects from BoxCollection
  Future<void> deleteMultipleFromCollection(
    BoxCollection collection,
    String boxName,
    List<String> keys,
  ) async {
    try {
      if (boxName.isEmpty) {
        throw ArgumentError('Box name cannot be empty');
      }
      if (keys.isEmpty) {
        throw ArgumentError('Keys list cannot be empty');
      }
      final box = await collection.openBox(boxName);
      await box.deleteAll(keys);
    } catch (e) {
      throw HiveError(
        'Failed to delete multiple values from collection box "$boxName": $e',
      );
    }
  }

  /// Clear all data from BoxCollection box
  Future<void> clearBoxInCollection(
    BoxCollection collection,
    String boxName,
  ) async {
    try {
      if (boxName.isEmpty) {
        throw ArgumentError('Box name cannot be empty');
      }
      final box = await collection.openBox(boxName);
      await box.clear();
    } catch (e) {
      throw HiveError('Failed to clear collection box "$boxName": $e');
    }
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
    try {
      if (boxNames.isEmpty) {
        throw ArgumentError('Box names list cannot be empty');
      }
      await collection.transaction(
        () async => await operations(),
        boxNames: boxNames,
        readOnly: readOnly,
      );
    } catch (e) {
      throw HiveError('Failed to execute transaction on boxes $boxNames: $e');
    }
  }
}
