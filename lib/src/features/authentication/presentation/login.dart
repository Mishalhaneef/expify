import 'package:expify/configs/app_styles.dart';
import 'package:expify/src/features/authentication/presentation/questions.dart';
import 'package:expify/src/features/authentication/presentation/registration.dart';
import 'package:expify/src/features/authentication/presentation/widgets/heading.dart';
import 'package:flutter/material.dart';
import '../../../../routes/routes.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            const HeadText(
              title: 'Welcome Back !',
              subtitle: 'Please sign in to your account',
            ),
            const SizedBox(height: 50),
            const AppTextField(hint: 'Email Address'),
            const AppTextField(
              hint: 'Password',
              password: true,
            ),
            Row(
              children: [
                const Spacer(),
                TextButton(
                    onPressed: () {}, child: const Text('Forgot Password?')),
                const SizedBox(width: 40)
              ],
            ),
            const Spacer(),
            AppButton(
              hint: 'Sign In',
              onTap: () => NavigationHandler.navigateOff(
                  context, const QuestionScreen()),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don’t have an account yet ?'),
                TextButton(
                    onPressed: () {
                      NavigationHandler.navigateOff(
                        context,
                        const RegistrationScreen(),
                      );
                    },
                    child: const Text('Sign Up'))
              ],
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
