import 'package:cached_network_image/cached_network_image.dart';
import 'package:filture_tube/utils/color.dart';
import 'package:filture_tube/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
  CustomCard(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.rating});

  String image;
  String title;
  String subTitle;
  String rating;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.w),
      child: Container(
        height: 250.h,
        width: 150.w,
        decoration: BoxDecoration(
          color: AppColors.black_50,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.r),
                  topRight: Radius.circular(15.r)),
              child: CachedNetworkImage(
                height: 150.h,
                width: 150.w,
                fit: BoxFit.cover,
                imageUrl: image,
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            SizedBox(
              width: Get.width,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: CustomTextStyle.h4(),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 80.w,
                          child: Text(
                            subTitle,
                            
                            style: CustomTextStyle.h5(),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: AppColors.yellow_500,
                              size: 10.h,
                            ),
                            Text(
                              rating,
                              style: CustomTextStyle.h5(),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
