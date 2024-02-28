import 'package:bookticket/styles/app_styles.dart';
import 'package:bookticket/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/OutlinedContainer.dart';

class UpcomingTicketView extends StatelessWidget {
  const UpcomingTicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width * 0.85,
      // height: 200,
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppStyles.mediumBorderRadius),
          color: AppStyles.orangeColor,
        ),
        child: Column(
          children: [
            /*
             The top part of the card
             */
            Container(
              decoration: BoxDecoration(
                color: AppStyles.primaryColor,
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style: AppStyles.headlineText3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      OutlinedContainer(),
                      Expanded(
                        child: Stack(children: [
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(builder: (BuildContext context,
                                BoxConstraints constraints) {
                              dynamic ll =
                                  (constraints.constrainWidth() / 6).floor();
                              print("ll >> $ll");
                              return Flex(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                direction: Axis.horizontal,
                                children: List.generate(
                                    (constraints.constrainWidth() / 6).floor(),
                                    (index) => SizedBox(
                                          width: 3,
                                          height: 1,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(3)),
                                          ),
                                        )),
                              );
                            }),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: const Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ]),
                      ),
                      OutlinedContainer(),
                      Expanded(child: Container()),
                      Text(
                        "LDN",
                        style: AppStyles.headlineText3
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 100,
                          child: const Text(
                            "New -York",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Expanded(child: Container()),
                        Text(
                          "8H 30M",
                          textAlign: TextAlign.center,
                          style: AppStyles.headlineText3
                              .copyWith(color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        const SizedBox(
                          width: 100,
                          child: Text(
                            "London",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ])
                ],
              ),
            ),

            /*
           The center part of the card
           */
            Container(
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                    height: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 20,
                      child: LayoutBuilder(builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                              (constraints.constrainWidth() / 10).floor(),
                              (index) => SizedBox(
                                  width: 5,
                                  height: 1,
                                  child: DecoratedBox(
                                      decoration: BoxDecoration(
                                    color: Colors.white,
                                  )))),
                        );
                      }),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                    height: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )),
                    ),
                  )
                ],
              ),
            ),

            /*
             The bottom part of the card
             */
            Container(
              padding:
                  EdgeInsets.only(left: 16, top: 10, bottom: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    children: [
                      Text(
                        "1 May",
                        style: AppStyles.headlineText3
                            .copyWith(color: Colors.white),
                      ),
                      Text(
                        "Date",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Expanded(child: Container()),
                  Column(
                    children: [
                      Text(
                        "23:30",
                        style: AppStyles.headlineText3
                            .copyWith(color: Colors.white),
                      ),
                      Text(
                        "Departure time",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Expanded(child: Container()),
                  Column(
                    children: [
                      Text(
                        "419",
                        style: AppStyles.headlineText3
                            .copyWith(color: Colors.white),
                      ),
                      Text(
                        "Number",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
