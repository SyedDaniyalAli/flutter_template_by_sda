import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/shared/utils/extensions/responsive_extension.dart';
import '../../../../core/app_navigation/go_router.dart';
import '../../logic/providers/home_provider.dart';

class HomeScreen extends ConsumerWidget {
  HomeScreen({super.key});

  final currentLocation =
      router.routerDelegate.state.matchedLocation.split('/').last.toLowerCase();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(homeProvider.notifier);
    final state = ref.watch(homeProvider);
    final bool isSmallScreen = !context.isLargerThanDesktop;

    return Scaffold(
      body: KeyboardListener(
        focusNode: FocusNode(),
        onKeyEvent: notifier.handleKeyEvent,
        child: Center(child: Text('Home Screen')),
      ),
    );
  }
}
