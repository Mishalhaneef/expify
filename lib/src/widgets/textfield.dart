import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../configs/app_styles.dart';
import '../features/authentication/application/auth_provider.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.hint,
    this.password = false,
    this.left = 50,
    this.right = 50,
  });

  final String hint;
  final bool password;
  final double left;
  final double right;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: left, right: right, bottom: 20),
      child: Consumer<AuthenticationProvider>(
        builder: (context, value, child) => Container(
          height: 71,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColor.greyLite,
            borderRadius: BorderRadius.circular(20),
            // border:
            //     value.onFocused ? Border.all(color: AppColor.greyDeep) : null,
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      obscureText: password ? value.obscureText : false,
                      cursorColor: AppColor.greyDeep,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: hint),
                    ),
                  ),
                  if (password)
                    GestureDetector(
                      onTap: () => value.togglePasswordVisibility(),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(
                          value.obscureText
                              ? Icons.remove_red_eye
                              : Icons.remove_red_eye_outlined,
                          color: AppColor.greyDeep,
                        ),
                      ),
                    )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
