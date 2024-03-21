import 'package:bookticket/styles/app_styles.dart';
import 'package:bookticket/utils/app_layout.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../models/custom_tab_view_model.dart';

class CustomTabView extends StatefulWidget {
  final List<CustomTabViewModel> views;

  const CustomTabView({super.key, required this.views});

  // const CustomTabView({Key? key, required this.views}) : super(key: key);

  @override
  State<CustomTabView> createState() => _CustomTabViewState();
}

class _CustomTabViewState extends State<CustomTabView> {
  late int currentTabIndex = 0;

  void onSwitchTab(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Header
        Container(
          clipBehavior: Clip.hardEdge,
          height: 40.h,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(50.r),
          ),
          child: Flex(
            direction: Axis.horizontal,
            children: widget.views.mapIndexed(
              (index, tab) {
                bool isActive = index == currentTabIndex;
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      onSwitchTab(index);
                    },
                    child: Container(
                        height: double.infinity,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: isActive ? Colors.white : Colors.transparent,
                        ),
                        child: Text(
                          tab.title,
                          style: AppStyles.primaryTextStyle.copyWith(
                              fontSize: 14,
                              color: isActive
                                  ? AppStyles.primaryColor
                                  : Colors.grey),
                        )),
                  ),
                );
              },
            ).toList(),
          ),
        ),

        Gap(AppStyles.mediumSpacer.h),

        //   Body
        Flex(
          direction: Axis.vertical,
          children: widget.views.mapIndexed((index, element) {
            Widget childView = element.view;
            bool isActive = index == currentTabIndex;
            return isActive
                ? SizedBox(
                    width: AppLayout.getSize(context).width, child: childView)
                : SizedBox();
          }).toList(),
        )
      ],
    );
  }
}
