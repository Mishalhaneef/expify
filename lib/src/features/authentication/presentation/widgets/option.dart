import 'package:expify/configs/app_styles.dart';
import 'package:flutter/material.dart';

class OptionTab extends StatelessWidget {
  const OptionTab({
    super.key,
    required this.selectedIndex,
    required this.index,
    required this.option,
  });

  final int selectedIndex;
  final int index;
  final String option;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, right: 80),
      child: Container(
        height: 71,
        decoration: BoxDecoration(
            color: selectedIndex == index
                ? AppColor.blueLowOpacity
                : AppColor.greyLite,
            borderRadius: BorderRadius.circular(20),
            border: selectedIndex == index
                ? Border.all(color: AppColor.blue)
                : null),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(option),
            ],
          ),
        ),
      ),
    );
  }
}
