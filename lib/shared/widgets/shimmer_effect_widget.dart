import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../constants/app_colors.dart';

class ShimmerEffectWidget extends StatelessWidget {
  final int count;
  final double height;
  const ShimmerEffectWidget({super.key, this.count = 10, this.height = 20.0});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Shimmer.fromColors(
        baseColor: AppColors.colorPrimaryBG, //Colors.grey.shade300,
        highlightColor: AppColors.primary,
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: ListView.builder(
            itemCount: count, // Adjust the number of items to show for shimmer
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 16.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: height,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
