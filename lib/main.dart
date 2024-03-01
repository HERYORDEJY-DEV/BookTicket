import 'package:bookticket/screens/bottom_bar.dart';
import 'package:bookticket/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          // useMaterial3: true,
          primaryColor: AppStyles.primaryColor,
          fontFamily: 'Raleway',
          textTheme: TextTheme(
              headline1: AppStyles.headlineText1,
              headline2: AppStyles.headlineText2,
              headline3: AppStyles.headlineText3,
              headline4: AppStyles.headlineText4,
              bodyText1: AppStyles.primaryTextStyle)),
      home: const BottomBar(
        currentScreenIndex: 0,
      ),
    ));
