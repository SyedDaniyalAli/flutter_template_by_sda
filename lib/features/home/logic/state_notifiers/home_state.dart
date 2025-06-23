import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/search_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required AsyncValue<List<SearchModel>> searchResponse,
    required bool searchByDefinition,
    // required Pagination? pagination,
  }) = _HomeState;
}
