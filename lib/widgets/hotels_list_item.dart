import 'package:bookticket/models/hotel_preview_model.dart';
import 'package:bookticket/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../styles/app_styles.dart';

class HotelsListItem extends StatelessWidget {
  const HotelsListItem({super.key, required this.item});

  final HotelPreviewModel item;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width * 0.6,
      child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              color: AppStyles.primaryColor,
              borderRadius: BorderRadius.circular(16)),
          width: size.width * 0.6,
          // height: 350,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: AppStyles.primaryColor,
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1611892440504-42a792e24d32?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")),
                  )),
              Container(
                padding: EdgeInsets.only(
                  left: AppStyles.mediumPadding,
                  right: AppStyles.mediumPadding,
                  bottom: AppStyles.mediumPadding,
                  top: AppStyles.smallPadding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style:
                          AppStyles.headlineText1.copyWith(color: Colors.white),
                    ),
                    Text(
                      item.location,
                      style: AppStyles.headlineText3,
                    ),
                    Gap(AppStyles.smallPadding),
                    Text(
                      "\$${item.price}",
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
