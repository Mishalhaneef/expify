import 'package:flutter/material.dart';

import '../../configs/app_styles.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onTap,
    required this.hint,
  });

  final Function() onTap;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 50, right: 50),
        child: Container(
          height: 71,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColor.black,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              hint,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
