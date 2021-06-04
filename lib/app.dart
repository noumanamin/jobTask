import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_job_task/blocs/password_reset_block.dart';
import 'package:flutter_job_task/events/password_reset_events.dart';
import 'package:flutter_job_task/routes.dart';
import 'package:flutter_job_task/states/password_reset_state.dart';
import 'package:flutter_job_task/ui/screens/splash_screen.dart';
import 'package:flutter_job_task/ui/widgets/global_listener.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:page_transition/page_transition.dart';

import 'constants/colors.dart';

GlobalKey<NavigatorState>? navigatorKey;

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  dynamic _initEasyLoading() {
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 1500)
      ..indicatorType = EasyLoadingIndicatorType.dualRing
      ..loadingStyle = EasyLoadingStyle.custom
      ..indicatorSize = 40.0
      ..radius = 10.0
      ..successWidget = Icon(
        MaterialCommunityIcons.check_circle_outline,
        color: Colors.green,
        size: 50,
      )
      ..errorWidget = Icon(
        MaterialCommunityIcons.close_circle_outline,
        color: Colors.red,
        size: 50,
      )
      ..infoWidget = Icon(
        MaterialCommunityIcons.information_outline,
        color: Colors.lightBlueAccent,
        size: 50,
      )
      ..progressColor = kPrimaryColor
      ..maskType = EasyLoadingMaskType.custom
      ..backgroundColor = Colors.white
      ..indicatorColor = kPrimaryColor
      ..toastPosition = EasyLoadingToastPosition.bottom
      ..textColor = kDarkTextColor
      ..fontSize = 14
      ..maskColor = Colors.black.withOpacity(0.4)
      ..userInteractions = false
      ..dismissOnTap = false;

    return EasyLoading.init();
  }

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      new FlutterLocalNotificationsPlugin();

  @override
  void initState() {
    navigatorKey = GlobalKey<NavigatorState>();
    // TODO: implement initState
    super.initState();


  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: kPrimaryColor,
        systemNavigationBarIconBrightness: Brightness.light));

    return MultiBlocProvider(
      providers: [
        BlocProvider<PasswordResetBloc>(
            create: (context) => PasswordResetBloc(PasswordResetInitialState())),
      ],
      child: ScreenUtilInit(
        designSize: Size(360, 690),
        allowFontScaling: false,
        builder: () => MaterialApp(
          navigatorKey: navigatorKey,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: kPrimaryColor,
            accentColor: kAccentColor,
          ),
          builder: _initEasyLoading(),
          initialRoute: Routes.splashScreen,
          onGenerateRoute: (settings) {
            switch (settings.name) {
              case Routes.splashScreen:
                return PageTransition(
                    child: SplashScreen(),
                    //type: PageTransitionType.rightToLeftWithFade,
                    settings: settings);

              default:
                return null;
            }
          },
        ),
      ),
    );
  }
}
//9646 y
