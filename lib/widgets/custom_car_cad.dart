import 'package:flutter/material.dart';
import 'package:task/core/app_export.dart';

class CarCard extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;

  CarCard({
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
      width: double.maxFinite,
      color: appTheme.secondary,
      child: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 16.h,
              child: SizedBox(
                width: 200.h,
                child: Text(
                  "msg_join_us_as_a_car".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.headlineLarge,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 100.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: appTheme.primary,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(36.adaptSize),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 40.v,
              right: 0,
              child: CustomImageView(
                height: 185.v,
                fit: BoxFit.contain,
                imagePath: ImageConstant.img0311,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
