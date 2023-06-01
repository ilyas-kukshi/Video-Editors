import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:video_editors/models/reponse_model.dart';
import 'package:video_editors/models/signin/signin_model.dart';
import 'package:video_editors/services/auth_services.dart';
import 'package:video_editors/shared/app_theme_shared.dart';
import 'package:video_editors/shared/dialogs.dart';
import 'package:video_editors/shared/slide_in_widget.dart';
import 'package:video_editors/shared/utility.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppThemeShared.primaryColor,
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const SizedBox(height: 100),
                SlideInWidget(
                    direction: SlideDirection.top,
                    duration: const Duration(milliseconds: 1000),
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
                    duration: const Duration(milliseconds: 1200),
                    child: Center(
                      child: AppThemeShared.textFormField(
                        context: context,
                        hintText: 'Enter email',
                        hintStyle:
                            TextStyle(color: Colors.white.withOpacity(0.7)),
                        controller: emailController,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        borderColor: Colors.white,
                        enabledBorderColor: Colors.white,
                        focusedBorderColor: Colors.white,
                        disabledBorderColor: Colors.white,
                      ),
                    )),
                const SizedBox(height: 20),
                SlideInWidget(
                  duration: const Duration(milliseconds: 1400),
                  direction: SlideDirection.left,
                  child: AppThemeShared.textFormField(
                    context: context,
                    hintText: 'Enter password',
                    obscureText: obscureText,
                    maxLines: 1,
                    controller: passwordController,
                    validator: Utility.passwordLengthValidator,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
                    borderColor: Colors.white,
                    enabledBorderColor: Colors.white,
                    focusedBorderColor: Colors.white,
                    disabledBorderColor: Colors.white,
                    suffixIcon: GestureDetector(
                      onTap: () => setState(() {
                        obscureText = !obscureText;
                      }),
                      child: obscureText
                          ? const Icon(
                              Icons.visibility,
                              color: Colors.white,
                              size: 25,
                            )
                          : const Icon(
                              Icons.visibility_off,
                              color: Colors.white,
                              size: 25,
                            ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SlideInWidget(
                  duration: const Duration(milliseconds: 1400),
                  direction: SlideDirection.left,
                  child: AppThemeShared.textFormField(
                    context: context,
                    hintText: 'Re-Enter password',
                    obscureText: obscureText,
                    maxLines: 1,
                    // controller: passwordController,
                    validator: (p0) {
                      return Utility.passwordSameValidator(
                          passwordController.text, p0);
                    },
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
                    borderColor: Colors.white,
                    enabledBorderColor: Colors.white,
                    focusedBorderColor: Colors.white,
                    disabledBorderColor: Colors.white,
                    suffixIcon: GestureDetector(
                      onTap: () => setState(() {
                        obscureText = !obscureText;
                      }),
                      child: obscureText
                          ? const Icon(
                              Icons.visibility,
                              color: Colors.white,
                              size: 25,
                            )
                          : const Icon(
                              Icons.visibility_off,
                              color: Colors.white,
                              size: 25,
                            ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                SlideInWidget(
                  direction: SlideDirection.bottom,
                  duration: const Duration(milliseconds: 1600),
                  child: AppThemeShared.sharedButton(
                    context: context,
                    width: MediaQuery.of(context).size.width * 0.85,
                    buttonText: "Signin",
                    color: Colors.white,
                    textColor: Colors.black,
                    onTap: () {
                      final valid = formKey.currentState!.validate();

                      if (valid) {
                        DialogShared.loadingDialog(context, "Logging in");
                        loginService(SigninModel(
                            email: emailController.text,
                            password: passwordController.text));
                      }
                    },
                  ),
                ),
                const SizedBox(height: 25),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: const Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.white,
                          thickness: 2,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          'OR',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.white,
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                SlideInWidget(
                  direction: SlideDirection.bottom,
                  duration: const Duration(milliseconds: 1600),
                  child: AppThemeShared.sharedButton(
                    context: context,
                    width: MediaQuery.of(context).size.width * 0.85,
                    buttonText: "Create Account",
                    color: Colors.white,
                    textColor: Colors.black,
                    onTap: () {
                      Navigator.pushNamed(context, '/createAccount');
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  loginService(SigninModel model) async {
    ResponseModel? responseModel = await AuthServices().singinService(
        context,
        SigninModel(
            id: '',
            email: emailController.text,
            password: passwordController.text));

    if (responseModel != null) {
      final json = jsonDecode(responseModel.data);
      // print(json);
      navigateToBuildResume(json);
    } else {
      pop();
    }
  }

  void pop() {
    Navigator.pop(context);
  }

  void navigateToBuildResume(json) {
    Navigator.pop(context);
    Navigator.pushNamed(context, '/buildResume', arguments: json["userId"]);
  }
}
