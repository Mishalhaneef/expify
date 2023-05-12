import 'package:flutter/material.dart';

import '../../../../../configs/app_styles.dart';

class HeadText extends StatelessWidget {
  const HeadText({super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: AppColor.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          subtitle,
          style: const TextStyle(color: AppColor.whiteLite),
        ),
      ],
    );
  }
}
