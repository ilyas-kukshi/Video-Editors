import 'package:flutter/material.dart';
import 'package:video_editors/shared/app_theme_shared.dart';
import 'package:video_editors/shared/slide_in_widget.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemeShared.primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 100),
            SlideInWidget(
                direction: SlideDirection.top,
                duration: const Duration(milliseconds: 660),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: Column(
                    children: [
                      Text(
                        'Log in to Freelance Video Editors',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Welcome back! Sign in using your email and password.',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleSmall,
                      )
                    ],
                  ),
                )),
            const SizedBox(height: 70),
            SlideInWidget(
                direction: SlideDirection.left,
                duration: const Duration(milliseconds: 700),
                child: Center(
                  child: AppThemeShared.textFormField(
                    context: context,
                    hintText: 'Enter email',
                    hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
                  ),
                )),
            const SizedBox(height: 20),
            SlideInWidget(
              duration: const Duration(milliseconds: 900),
              direction: SlideDirection.left,
              child: AppThemeShared.textFormField(
                  context: context, hintText: 'Enter password'),
            ),
            const SizedBox(height: 50),
            SlideInWidget(
              direction: SlideDirection.left,
              duration: const Duration(milliseconds: 1100),
              child: AppThemeShared.sharedButton(
                context: context,
                width: MediaQuery.of(context).size.width * 0.85,
                buttonText: "Signin",
                color: Colors.white,
                textColor: Colors.black,
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}