import 'package:flutter/material.dart';
import 'package:video_editors/shared/app_theme_shared.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loadNextScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemeShared.primaryColor,
    );
  }

  loadNextScreen() async {
    await Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, 'signin');
    });
  }
}
