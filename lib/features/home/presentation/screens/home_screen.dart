import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template_by_sda/shared/utils/extensions/responsive_extension.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/app_navigation/go_router.dart';
import '../../../../core/app_navigation/route_names.dart';
import '../../../../shared/constants/constant.dart';
import '../../../../shared/widgets/clickable_widget.dart';
import '../../../../shared/widgets/shimmer_effect_widget.dart';
import '../../../../shared/widgets/text_with_hover_effect.dart';
import '../../logic/providers/home_provider.dart';
import '../widgets/toggle_button.dart';

class MainLayout extends ConsumerWidget {
  final Widget child;
  MainLayout({super.key, required this.child});

  final currentLocation =
      router.routerDelegate.state.matchedLocation.split('/').last.toLowerCase();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(homeNotifierProvider.notifier);
    final state = ref.watch(homeNotifierProvider);
    final bool isSmallScreen = !context.isLargerThanDesktop;

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      // Add drawer for mobile view
      drawer: isSmallScreen ? _buildDrawer(context) : null,
      body: KeyboardListener(
        focusNode: FocusNode(),
        onKeyEvent: notifier.handleKeyEvent,
        child: Stack(
          // fit: StackFit.loose,
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Fixed Search Bar
                Container(
                  color: Colors.black,
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal:
                        context.isLargerThanTablet
                            ? AppConstants.defaultMainPagePadding
                            : 0.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // If mobile, add hamburger menu button
                      if (isSmallScreen)
                        Builder(
                          builder:
                              (context) => IconButton(
                                icon: Icon(Icons.menu, color: Colors.white),
                                onPressed:
                                    () => Scaffold.of(context).openDrawer(),
                              ),
                        ),
                      Flexible(
                        flex: 1,
                        child: FittedBox(
                          child: Image.asset(
                            AppImages.logo,
                            width: 300,
                            // color: Colors.white,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: FittedBox(
                          child: SizedBox(
                            width: 500,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16.0,
                              ),
                              child: Column(
                                children: [
                                  TextField(
                                    controller: notifier.searchContoller,
                                    onChanged: (value) {
                                      notifier.search();
                                    },
                                    decoration: InputDecoration(
                                      suffixIcon: GestureDetector(
                                        onTap: () {
                                          notifier.clearSearch();
                                        },
                                        child: Icon(
                                          notifier.searchContoller.text
                                                  .trim()
                                                  .isNotEmpty
                                              ? Icons.clear
                                              : Icons.search,
                                          color: Colors.black,
                                        ),
                                      ),
                                      hintText: 'Search',
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                  if (!context.isLargerThanTablet)
                                    Column(
                                      children: [
                                        SizedBox(height: 3),
                                        SearchByEnglishDefinitionButton(
                                          onToggle: (isToggled) {
                                            notifier
                                                .toggleSearchByEnglishDefinition(
                                                  isToggled,
                                                );
                                          },
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      if (context.isLargerThanTablet)
                        Flexible(
                          child: SearchByEnglishDefinitionButton(
                            onToggle: (isToggled) {
                              notifier.toggleSearchByEnglishDefinition(
                                isToggled,
                              );
                            },
                          ),
                        ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Container(
                        color: Colors.black,
                        child: Image.asset(
                          context.isLargerThanTablet
                              ? AppImages.webBannerIcon
                              : AppImages.bannerIcon,
                          height: context.isLargerThanTablet ? 20 : 30,
                          width: double.infinity,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
                // Fixed Navigation Bar
                // Row(
                //   children: [
                //     Expanded(
                //       child: Container(
                //         color: Colors.black,
                //         padding: EdgeInsets.only(
                //           top: 10,
                //           left: currentPadding,
                //           right: currentPadding,
                //           bottom: context.isLargerThanTablet ? 0 : 10,
                //         ),
                //         child: Flex(
                //           mainAxisAlignment: MainAxisAlignment.start,
                //           direction: context.isLargerThanTablet
                //               ? Axis.horizontal
                //               : Axis.vertical,
                //           mainAxisSize: MainAxisSize.min,
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             _buildNavItem(
                //                 context, 'Dictionary Home', RouteNames.words),
                //             _buildNavItem(
                //                 context, 'Dictionary Roots', RouteNames.roots),
                //             _buildNavItem(context, 'Dictionary Affixes',
                //                 RouteNames.affixes),
                //             _buildNavItem(
                //                 context, 'Sound Guide', RouteNames.soundGuide),
                //           ],
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                // const SizedBox(height: 20),
                // // Scrollable Content (Changes when navigating)
                // Expanded(child: child),
                // Main content area - conditionally show side menu based on screen size
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Left Panel - only show on larger screens
                      if (!isSmallScreen)
                        Expanded(
                          flex: 2,
                          child: Container(
                            color: AppColors.darkBlack,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  _buildNavItem(
                                    context,
                                    'Dictionary Home',
                                    RouteNames.words,
                                  ),
                                  // 3. Can we keep the Dictionary Roots Section as part of the website but hide it for the foreseeable future until it is further populated?"
                                  // _buildNavItem(context, 'Dictionary Roots',
                                  //     RouteNames.roots),
                                  _buildNavItem(
                                    context,
                                    'Dictionary Affixes',
                                    RouteNames.affixes,
                                  ),
                                  _buildNavItem(
                                    context,
                                    'Sound Guide',
                                    RouteNames.soundGuide,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      // Right Panel
                      Expanded(
                        flex: isSmallScreen ? 12 : 10,
                        child: Column(
                          children: [
                            const SizedBox(height: 20),
                            Expanded(child: child),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Search Results
            if (notifier.searchContoller.text.trim().isNotEmpty)
              Positioned(
                top: context.isLargerThanTablet ? 85 : 110,
                right: 0,
                left: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal:
                        context.isLargerThanTablet
                            ? AppConstants.defaultMainPagePadding
                            : 10.0,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            flex: 1,
                            child: FittedBox(
                              child: SizedBox(
                                // AppImages.logo,
                                width: 300,
                                // color: Colors.white,
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: FittedBox(
                              child: SizedBox(
                                width: 470,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: state.searchResponse.when(
                                    error: (error, stackTrace) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Center(child: Text('$error')),
                                      );
                                    },
                                    loading: () {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: const Center(
                                          child: SizedBox(
                                            height: 75,
                                            child: ShimmerEffectWidget(
                                              count: 2,
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                    data: (data) {
                                      if (data.isEmpty) {
                                        return Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: const Center(
                                            child: Text('No results found'),
                                          ),
                                        );
                                      }
                                      return SizedBox(
                                        height: 500,
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          hitTestBehavior:
                                              HitTestBehavior.opaque,
                                          physics:
                                              const AlwaysScrollableScrollPhysics(),
                                          itemCount:
                                              state
                                                  .searchResponse
                                                  .value
                                                  ?.length ??
                                              0,
                                          itemBuilder: (context, index) {
                                            final result =
                                                state
                                                    .searchResponse
                                                    .value?[index];
                                            if (result == null) {
                                              return const SizedBox();
                                            }

                                            String definition = "";
                                            if (result.definition != null &&
                                                result.definition!.isNotEmpty) {
                                              definition =
                                                  '• ${result.definition}';
                                            }

                                            return GestureDetector(
                                              onTap: () {},
                                              child: ListTile(
                                                title: TextWithHoverEffect(
                                                  text:
                                                      '${result.title} $definition',
                                                  selectedText:
                                                      notifier
                                                          .searchContoller
                                                          .text
                                                          .trim(),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                          if (context.isLargerThanTablet) Spacer(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  // Add a drawer for mobile view
  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: Container(
        color: AppColors.darkBlack,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              child: Image.asset(AppImages.logo, fit: BoxFit.contain),
            ),
            _buildNavItem(context, 'Dictionary Home', RouteNames.words),
            _buildNavItem(context, 'Dictionary Affixes', RouteNames.affixes),
            _buildNavItem(context, 'Sound Guide', RouteNames.soundGuide),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(BuildContext context, String title, String route) {
    return ListTile(
      title: ClickableWidget(
        onTap: () => context.go(route),
        child: Text(
          title,
          style: TextStyle(color: AppColors.primaryColor, fontSize: 16),
        ),
      ),
      trailing:
          currentLocation == route.split('/').last.toLowerCase()
              ? RotatedBox(
                quarterTurns: 1,
                child: Image.asset(
                  AppImages.polygonIcon,
                  height: 9,
                  width: 9.8,
                  // scale: 2.5,
                  // fit: BoxFit.fill,
                ),
              )
              : null,
    );
  }
}
