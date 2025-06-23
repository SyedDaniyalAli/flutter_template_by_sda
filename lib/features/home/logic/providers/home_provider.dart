import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network_handling/base_request/base_request.dart';
import '../../../../shared/utils/helper/app_helper.dart';
import '../../data/repositories/home_repo_impl.dart';
import '../state_notifiers/home_state.dart';

part 'home_provider.g.dart';

@Riverpod(keepAlive: false)
class HomeNotifier extends _$HomeNotifier {
  final scrollControllerWords = ScrollController();
  final searchContoller = TextEditingController();
  int pageNumber = 1;
  final _debouncer = Debouncer(delay: const Duration(seconds: 1));

  @override
  HomeState build() {
    // Initialize the state
    final initialState = HomeState(
      searchResponse: const AsyncValue.loading(),
      searchByDefinition: false,
    );

    // Set the initial state
    state = initialState;

    // Initialization code
    initialize();

    // Return the initial state
    return initialState;
  }

  initialize() {
    ref.onDispose(() {
      scrollControllerWords.dispose();
      searchContoller.dispose();
    });
  }

  void handleKeyEvent(KeyEvent event) {
    if (event is KeyDownEvent &&
        event.logicalKey == LogicalKeyboardKey.escape) {
      clearSearch();
    }
  }

  Future<void> searchData({BaseRequest? requestEntity}) async {
    final homeRepo = HomeRepoImpl();
    try {
      final response = await homeRepo.searchData(
        requestEntity:
            requestEntity ??
            // if null
            BaseRequest(
              page: pageNumber,
              perPage: 1000,
              searchByDefinition: state.searchByDefinition,
            ),
      );

      response.fold(
        (l) {
          // Handle error
          state = state.copyWith(
            searchResponse: AsyncValue.error(l, StackTrace.current),
          );
        },
        (r) {
          // Handle success
          state = state.copyWith(searchResponse: AsyncValue.data(r));
        },
      );
    } catch (e) {
      state = state.copyWith(
        searchResponse: AsyncValue.error(e, StackTrace.current),
      );
    }
  }

  void setSelectedSyllabary(String title) {
    searchContoller.text = title;
    search();
  }

  void search() {
    state = state.copyWith(searchResponse: const AsyncValue.loading());

    if (searchContoller.text.trim().isEmpty) {
      return;
    }

    _debouncer.call(() {
      searchData(
        requestEntity: BaseRequest(
          query: searchContoller.text,
          page: pageNumber,
          perPage: 1000,
          searchByDefinition: state.searchByDefinition,
        ),
      );
    });
  }

  void toggleSearchByEnglishDefinition(bool isToggled) {
    state = state.copyWith(
      searchResponse: const AsyncValue.loading(),
      searchByDefinition: isToggled,
    );
    search();
  }

  void clearSearch() {
    searchContoller.text = '';
    state = state.copyWith(searchResponse: const AsyncValue.loading());
  }
}
