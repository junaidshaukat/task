import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  HomeScreenState createState() => HomeScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: HomeScreen(),
    );
  }
}

class HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  Widget _buildIconWithText({
    int index = 0,
    String text = '',
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.check,
          height: 16.h,
          width: 16.h,
        ),
        Text(
          text,
          style: index == 4
              ? CustomTextStyles.bodySmallPrimary.copyWith(
                  decorationColor: appTheme.secondary,
                  decoration: TextDecoration.underline,
                  color: theme.colorScheme.secondary,
                )
              : theme.textTheme.bodySmall,
        )
      ],
    );
  }

  Widget _buildPackage({
    int index = 0,
    String popular = '',
    String months = '',
    String pkr1 = '',
    String pkr2 = '',
    String everyMonths = '',
  }) {
    return Expanded(
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: index == 2 ? appTheme.blueGray800 : null,
              border: Border.all(
                color: index == 2 ? appTheme.whiteA700 : Colors.transparent,
              ),
              borderRadius: BorderRadiusStyle.roundedBorder14,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    vertical: 12.v,
                  ),
                  decoration: BoxDecoration(
                    color: index == 2 ? theme.colorScheme.secondary : null,
                    border: Border(
                      bottom: BorderSide(
                        color: index == 2
                            ? appTheme.whiteA700
                            : Colors.transparent,
                      ),
                    ),
                    borderRadius: BorderRadiusStyle.customBorderTL14,
                  ),
                  child: Text(
                    popular,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Text(
                  months,
                  style: theme.textTheme.headlineSmall,
                ),
                Text(
                  index == 1 ? "lbl_month".tr : "lbl_months".tr,
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 8.v),
                SizedBox(
                  width: double.maxFinite,
                  child: Divider(
                    indent: 10.h,
                    endIndent: 8.h,
                  ),
                ),
                SizedBox(height: 8.v),
                RichText(
                  textAlign: TextAlign.end,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: pkr1,
                        style: theme.textTheme.labelLarge!.copyWith(
                          decoration: TextDecoration.lineThrough,
                          decorationColor: appTheme.secondary,
                        ),
                      ),
                      TextSpan(
                        text: "\n".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                      TextSpan(
                        text: pkr2,
                        style: theme.textTheme.labelLarge,
                      ),
                      TextSpan(
                        text: "\n".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                      TextSpan(
                        text: everyMonths,
                        style: CustomTextStyles.poppinsWhiteA700,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.v),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          _buildIconWithText(
            text: "msg_manage_inventory".tr,
          ),
          SizedBox(height: 8.v),
          _buildIconWithText(
            text: "lbl_multiple_users".tr,
          ),
          SizedBox(height: 8.v),
          _buildIconWithText(
            text: "msg_unlimited_ad_posting".tr,
          ),
          SizedBox(height: 8.v),
          _buildIconWithText(
            index: 4,
            text: "msg_free_feature_ads".tr,
          ),
          SizedBox(height: 12.v),
          if (index == 1) ...[
            CustomOutlinedButton(
              text: "lbl_selected".tr,
              margin: EdgeInsets.symmetric(horizontal: 12.h),
              buttonStyle: CustomButtonStyles.secondary,
              buttonTextStyle: theme.textTheme.titleMedium!,
            ),
          ],
          if (index != 1) ...[
            CustomOutlinedButton(
              margin: EdgeInsets.symmetric(horizontal: 12.h),
              text: "lbl_select".tr,
            )
          ]
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              delegate: CustomAppbar(
                minHeight: 50.v,
                maxHeight: 50.v,
              ),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: CarCard(
                minHeight: 200.v,
                maxHeight: 200.v,
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              fillOverscroll: true,
              child: Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  border: Border.all(width: 0),
                ),
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_our_platform_is".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.justify,
                        style: theme.textTheme.bodyMedium,
                      ),
                      SizedBox(height: 6.v),
                      Text(
                        "msg_only_car_dealers".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.justify,
                        style: CustomTextStyles.labelLargeBold,
                      ),
                      SizedBox(height: 8.v),
                      Text(
                        "lbl_select_plan".tr,
                        style: theme.textTheme.titleLarge,
                      ),
                      SizedBox(height: 8.v),
                      SizedBox(
                        height: 337.v,
                        width: double.maxFinite,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              right: 0,
                              top: 105.v,
                              child: CustomImageView(
                                height: 6.v,
                                fit: BoxFit.contain,
                                width: double.maxFinite,
                                imagePath: ImageConstant.circle,
                              ),
                            ),
                            Positioned(
                              left: 130.h,
                              top: 105.v,
                              bottom: 0,
                              child: VerticalDivider(
                                indent: 20.v,
                                endIndent: 20.v,
                              ),
                            ),
                            Positioned(
                              left: 267.h,
                              top: 105.v,
                              bottom: 0,
                              child: VerticalDivider(
                                indent: 20.v,
                                endIndent: 20.v,
                              ),
                            ),
                            Row(
                              children: [
                                _buildPackage(
                                  index: 1,
                                  months: "lbl_01".tr,
                                  pkr1: "".tr,
                                  pkr2: "lbl_pkr_9000".tr,
                                  everyMonths: 'lbl_per_month'.tr,
                                ),
                                SizedBox(width: 10.h),
                                _buildPackage(
                                  index: 2,
                                  popular: "lbl_most_popular".tr,
                                  months: "lbl_03".tr,
                                  pkr1: "lbl_pkr_27000".tr,
                                  pkr2: "lbl_pkr_24000".tr,
                                  everyMonths: 'lbl_every_3_months'.tr,
                                ),
                                SizedBox(width: 10.h),
                                _buildPackage(
                                  index: 3,
                                  months: "lbl_12".tr,
                                  pkr1: "lbl_pkr_108_000".tr,
                                  pkr2: "lbl_pkr_100_000".tr,
                                  everyMonths: 'lbl_yearly'.tr,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      CustomOutlinedButton(
                        height: 52.h,
                        text: "lbl_next".tr,
                        margin: EdgeInsets.only(
                          left: 20.h,
                          right: 24.h,
                        ),
                        rightIcon: Container(
                          margin: EdgeInsets.only(left: 6.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.arrowRight,
                            height: 16.h,
                            width: 16.h,
                            fit: BoxFit.contain,
                          ),
                        ),
                        buttonStyle: CustomButtonStyles.secondary,
                        buttonTextStyle: theme.textTheme.titleMedium!,
                      ),
                      SizedBox(height: 8.v),
                      SizedBox(
                        width: double.maxFinite,
                        child: Divider(),
                      ),
                      SizedBox(height: 18.h),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "msg_not_a_car_dealer2".tr,
                              style: CustomTextStyles.bodyMediumSecondary,
                            ),
                            TextSpan(
                              text: "msg_go_back_and_search".tr,
                              style: CustomTextStyles.bodyMedium15_1,
                            )
                          ],
                        ),
                        textAlign: TextAlign.justify,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
