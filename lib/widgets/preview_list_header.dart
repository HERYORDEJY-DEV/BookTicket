import 'package:bookticket/styles/app_styles.dart';
import 'package:flutter/material.dart';

class PreviewListHeader extends StatelessWidget {
  final String title;
  final String viewAllText = "View all";
  final Function() onViewAll;

  const PreviewListHeader(
      {super.key, required this.title, required this.onViewAll});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Flex(direction: Axis.horizontal, children: [
        Expanded(
          child: Text(
            title,
            style: AppStyles.headlineText3.copyWith(color: AppStyles.textColor),
          ),
        ),
        InkWell(
          onTap: onViewAll,
          child: Text(
            viewAllText,
            style: TextStyle(
              fontSize: 12,
              color: AppStyles.primaryColor,
            ),
          ),
        )
      ]),
    );
  }
}
