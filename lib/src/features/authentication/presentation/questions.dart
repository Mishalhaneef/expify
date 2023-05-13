import 'package:expify/configs/app_styles.dart';
import 'package:expify/routes/routes.dart';
import 'package:expify/src/features/authentication/application/question_provider.dart';
import 'package:expify/src/features/authentication/domain/question_model.dart';
import 'package:expify/src/features/authentication/presentation/widgets/heading.dart';
import 'package:expify/src/features/authentication/presentation/widgets/option.dart';
import 'package:expify/src/features/home/presentation/home.dart';
import 'package:expify/src/widgets/custom_button.dart';
import 'package:expify/src/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<QuestionProvider>(
      builder: (context, value, child) {
        final question = questions[value.currentQuestionIndex];
        return Scaffold(
          appBar: AppBar(
            backgroundColor: AppColor.white,
          ),
          body: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeadText(
                  title: question.question,
                  width: 200,
                  subtitle: question.subtitle,
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
                const SizedBox(height: 50),
                if (!question.textField)
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () => value.selectOption(index),
                      child: OptionTab(
                        selectedIndex: value.selectedOptionIndex,
                        index: index,
                        option: question.options[index],
                      ),
                    ),
                  )
                else
                  AppTextField(
                    hint: question.options[0],
                    left: 0,
                    right: 30,
                  ),
                // * for adding extra income source
                // Row(
                //   children: [
                // Expanded(
                //   child: ListView.builder(
                //       itemCount: value.textFieldCount,
                //       shrinkWrap: true,
                //       itemBuilder: (context, index) {
                //         return ;
                //       }),
                // ),
                // if (!question.limitScreen)
                //   Column(
                //     children: [
                //       IconButton(
                //           onPressed: () {
                //             value.addTextfield();
                //           },
                //           icon: const Icon(
                //             Icons.add_circle_sharp,
                //             color: AppColor.greyDeep,
                //           )),
                //       const SizedBox(
                //         height: 50,
                //       )
                //     ],
                //   ),
                //     const SizedBox(width: 10)
                //   ],
                // ),
                const Spacer(),
                AppButton(
                    onTap: () {
                      value.navigateQuestion();
                      if (value.isQuestionFinished) {
                        NavigationHandler.navigateOff(
                            context, const HomeScreen());
                      }
                    },
                    hint: 'Done'),
                const SizedBox(height: 50)
              ],
            ),
          ),
        );
      },
    );
  }
}
