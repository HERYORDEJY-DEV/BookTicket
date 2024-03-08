import 'package:bookticket/models/hotel_preview_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../styles/app_styles.dart';

class HotelsListItem extends StatelessWidget {
  const HotelsListItem({super.key, required this.hotel});

  final HotelPreviewModel hotel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.6.sw,
      child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              color: AppStyles.primaryColor,
              borderRadius:
                  BorderRadius.circular(AppStyles.mediumBorderRadius.r),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200,
                    spreadRadius: 5,
                    blurRadius: 20),
              ]),
          padding: EdgeInsets.symmetric(
              horizontal: AppStyles.mediumPadding.w,
              vertical: AppStyles.mediumPadding.h),
          // width: size.width * 0.6,
          // height: 350,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 120.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppStyles.smallBorderRadius.r),
                        topRight:
                            Radius.circular(AppStyles.smallBorderRadius.r)),
                    color: AppStyles.primaryColor,
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1611892440504-42a792e24d32?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")),
                  )),
              Container(
                padding: EdgeInsets.only(
                  top: AppStyles.smallPadding,
                ).h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hotel.name,
                      style:
                          AppStyles.headlineText1.copyWith(color: Colors.white),
                    ),
                    Text(
                      hotel.location,
                      style: AppStyles.headlineText3
                          .copyWith(color: AppStyles.kakiColor),
                    ),
                    Gap(AppStyles.mediumPadding.h),
                    Text(
                      "\$${hotel.price}/night",
                      style:
                          AppStyles.headlineText2.copyWith(color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
