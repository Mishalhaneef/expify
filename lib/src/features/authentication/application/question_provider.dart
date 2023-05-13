import 'dart:developer';

import 'package:expify/src/features/authentication/domain/question_model.dart';
import 'package:flutter/material.dart';

class QuestionProvider extends ChangeNotifier {
  int selectedOptionIndex = -1;
  int currentQuestionIndex = 0;
  bool isQuestionFinished = false;
  TextEditingController salaryController = TextEditingController();
  TextEditingController spendingLimitController = TextEditingController();

  selectOption(int index) {
    selectedOptionIndex = index;
    notifyListeners();
  }

  // addTextfield() {
  //   textFieldCount++;
  //   notifyListeners();
  // }

  void navigateQuestion() {
    selectedOptionIndex = -1;
    notifyListeners();
    if (currentQuestionIndex >= questions.length - 1) {
      currentQuestionIndex = 0;
      isQuestionFinished = true;
      notifyListeners();
    } else {
      currentQuestionIndex++;
    }
    log('current qstn index : $currentQuestionIndex');

    notifyListeners();
  }
}
