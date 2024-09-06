import 'package:filture_tube/utils/color.dart';
import 'package:filture_tube/utils/image.dart';
import 'package:filture_tube/utils/string.dart';
import 'package:filture_tube/utils/text_style.dart';
import 'package:filture_tube/widget/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15.h,
                ),
                Text(AppString.mixTube, style: CustomTextStyle.h1()),
                SizedBox(
                  height: 20.h,
                ),
                //==========================================movie item start here
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 10.h,
                          width: 10.w,
                          decoration: const BoxDecoration(
                              color: AppColors.purple_500,
                              shape: BoxShape.circle),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          AppString.movies,
                          style: CustomTextStyle.h2(),
                        )
                      ],
                    ),
                    Text(
                      AppString.seeAll,
                      style: CustomTextStyle.h3(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),

                SizedBox(
                  height: 200.h,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return CustomCard(
                          image: AppImage.movieCardImage,
                          title: AppString.movieCardtitle,
                          subTitle: AppString.movieCardSubtitle,
                          rating: AppString.rating,
                        );
                      }),
                ),
                SizedBox(
                  height: 20.h,
                ),
                //====================================================Tv series item start here
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 10.h,
                          width: 10.w,
                          decoration: const BoxDecoration(
                              color: AppColors.purple_500,
                              shape: BoxShape.circle),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          AppString.movies,
                          style: CustomTextStyle.h2(),
                        )
                      ],
                    ),
                    Text(
                      AppString.seeAll,
                      style: CustomTextStyle.h3(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),

                SizedBox(
                  height: 200.h,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return CustomCard(
                          image: AppImage.tvCardImage,
                          title: AppString.tvCardtitle,
                          subTitle: AppString.tvCardSubtitle,
                          rating: AppString.rating,
                        );
                      }),
                ),
                SizedBox(
                  height: 20.h,
                ),
                //====================================================Tv series item start here
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 10.h,
                          width: 10.w,
                          decoration: const BoxDecoration(
                              color: AppColors.purple_500,
                              shape: BoxShape.circle),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          AppString.movies,
                          style: CustomTextStyle.h2(),
                        )
                      ],
                    ),
                    Text(
                      AppString.seeAll,
                      style: CustomTextStyle.h3(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),

                SizedBox(
                  height: 200.h,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return CustomCard(
                          image: AppImage.musicCardImage,
                          title: AppString.tvCardtitle,
                          subTitle: AppString.tvCardSubtitle,
                          rating: AppString.rating,
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
