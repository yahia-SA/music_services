import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_services/core/constans/app_constans.dart';
import 'package:music_services/core/extensions/sizedbox_extensions.dart';
import 'package:music_services/core/theme/app_colors.dart';
import 'package:music_services/core/theme/app_text.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Main Background Container with Content
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15.r),
              bottomRight: Radius.circular(15.r),
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.primaryColor, // #A90140
                AppColors.secondaryColor, // #550120
              ],
            ),
          ),
          width: double.infinity,
          height: 291.h,
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: Column(
            children: [
              // Search Bar
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    Container(
                      width: 299.w,
                      height: 44.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                        vertical: 11.h,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: AppColors.appBackgroundColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(Icons.search, color: Colors.white),
                          horizontalSpace(3.5),
                          Expanded(
                            child: TextField(
                              style: AppText.syne14Medium.copyWith(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                hintText: AppConstans.search,
                                hintStyle: AppText.syne14Medium.copyWith(
                                  color: AppColors.iconColor,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Container(
                            width: 1.w,
                            height: 21.02.h,
                            color: const Color.fromRGBO(69, 69, 79, 1),
                          ),
                          horizontalSpace(.51),
                          Icon(Icons.mic, color: Colors.white, size: 20.sp),
                        ],
                      ),
                    ),
                    Expanded(
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: SvgPicture.asset(AppConstans.avatar),
                      ),
                    ),
                  ],
                ),
              ),

              // Free Demo Text Section
              verticalSpace(36),
              Text(AppConstans.cailm, style: AppText.syne16BoldWhite),
              verticalSpace(13),
              Text(AppConstans.freeDemo, style: AppText.lobster),
              verticalSpace(20),
              Text(AppConstans.forCustom, style: AppText.syne16Reqular),
              verticalSpace(20),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  AppConstans.bookNow,
                  style: AppText.syne13BoldBlack,
                ),
              ),
            ],
          ),
        ),

        // Bottom Left SVG - music_cd
        Positioned(
          bottom: 10.h,
          left: -29.w,
          child: SvgPicture.asset(
            AppConstans.musicCd,
            width: 121.w,
            height: 121.h,
            fit: BoxFit.contain,
          ),
        ),

        // Bottom Right SVG - music_2
        Positioned(
          bottom: 10.h,
          right: -42.w,
          child: SvgPicture.asset(
            AppConstans.music_2,
            width: 135.w,
            height: 135.h,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
