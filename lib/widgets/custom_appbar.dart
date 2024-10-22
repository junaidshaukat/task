import 'package:flutter/material.dart';
import '/core/app_export.dart';

class CustomAppbar extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;

  CustomAppbar({
    required this.minHeight,
    required this.maxHeight,
  });

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  @override
  Widget build(context, shrinkOffset, overlapsContent) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.secondary,
      ),
      child: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: CustomImageView(
                imagePath: ImageConstant.arrowLeft,
              ),
            )
          ],
        ),
      ),
    );
  }
}
