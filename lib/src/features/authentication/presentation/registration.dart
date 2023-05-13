import 'package:expify/configs/app_styles.dart';
import 'package:expify/routes/routes.dart';
import 'package:expify/src/features/authentication/presentation/login.dart';
import 'package:expify/src/features/authentication/presentation/questions.dart';
import 'package:expify/src/features/authentication/presentation/widgets/heading.dart';
import 'package:expify/src/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../../../widgets/textfield.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

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
              title: 'Create New Account',
              subtitle: 'Please fill in the form to continue',
            ),
            const SizedBox(height: 50),
            const AppTextField(hint: 'Full Name'),
            const AppTextField(hint: 'Email Address'),
            const AppTextField(hint: 'Phone Number'),
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
              hint: 'Sign Up',
              onTap: () => NavigationHandler.navigateOff(
                  context, const QuestionScreen()),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Have an account already ?'),
                TextButton(
                    onPressed: () {
                      NavigationHandler.navigateOff(
                        context,
                        const LoginScreen(),
                      );
                    },
                    child: const Text('Sign In'))
              ],
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
