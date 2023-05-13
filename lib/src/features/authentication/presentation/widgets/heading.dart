import 'package:flutter/material.dart';

import '../../../../../configs/app_styles.dart';

class HeadText extends StatelessWidget {
  const HeadText(
      {super.key,
      required this.title,
      required this.subtitle,
      this.crossAxisAlignment = CrossAxisAlignment.center,
      this.width});

  final String title;
  final String subtitle;
  final CrossAxisAlignment crossAxisAlignment;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: AppColor.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: width,
          child: Text(
            subtitle,
            style: const TextStyle(color: AppColor.whiteLite),
          ),
        ),
      ],
    );
  }
}
