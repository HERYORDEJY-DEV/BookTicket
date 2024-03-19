import 'package:bookticket/screens/bottom_bar.dart';
import 'package:bookticket/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/*

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
*/
/*

void main() {
  runApp(const BookTicket());
}

class BookTicket extends StatelessWidget {
  const BookTicket({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        title: 'Book Ticket',
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
      ),
    );
  }
}
*/

void main() {
  // Use SystemChrome
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, statusBarBrightness: Brightness.dark,
      //color set to transperent or set your own color
    ),
  );

  runApp(const BookTicket());
}

class BookTicket extends StatelessWidget {
  const BookTicket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Book Ticket',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
              primarySwatch: Colors.blue,
              // textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
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
        );
      },
      // child: const HomePage(title: 'First Method'),
    );
  }
}
