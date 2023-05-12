import 'dart:async';

import 'package:expify/configs/app_styles.dart';
import 'package:expify/routes/routes.dart';
import 'package:expify/src/features/authentication/presentation/registration.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () async {
      NavigationHandler.navigateOff(context, const RegistrationScreen());
    });

    return Scaffold(
      body: Center(
        child: Image.asset(AppIcons.appIcon, height: 150),
      ),
    );
  }
}
