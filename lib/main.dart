import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:video_editors/auth/create_account.dart';
import 'package:video_editors/auth/signin.dart';
import 'package:video_editors/screens/add_wok.dart';
import 'package:video_editors/screens/build_resume.dart';
import 'package:video_editors/screens/dashboard_main.dart';
import 'package:video_editors/screens/portfolio.dart';
import 'package:video_editors/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
          titleSmall: TextStyle(color: Colors.white, fontSize: 16),
        ),

        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: _routes,
      home: const SplashScreen(),
    );
  }

  Route _routes(RouteSettings settings) {
    switch (settings.name) {
      case '/signin':
        return PageTransition(
            child: const Signin(), type: PageTransitionType.leftToRight);
      case '/createAccount':
        return PageTransition(
            child: const CreateAccount(), type: PageTransitionType.leftToRight);
      case '/buildResume':
        return PageTransition(
            child: BuildResume(
              id: settings.arguments as String,
            ),
            type: PageTransitionType.leftToRight);
      case '/dashboardMain':
        return PageTransition(
            child: DashboardMain(
              id: settings.arguments as String,
            ),
            type: PageTransitionType.leftToRight);
      case '/portfolio':
        return PageTransition(
            child: Portfolio(
              id: settings.arguments as String,
            ),
            type: PageTransitionType.leftToRight);
      case '/addWork':
        return PageTransition(
            child: AddWork(
              id: settings.arguments as String,
            ),
            type: PageTransitionType.leftToRight);

      default:
        return PageTransition(
            child: const Signin(), type: PageTransitionType.leftToRight);
    }
  }
}
