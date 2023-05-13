import 'package:flutter/material.dart';

import '../application/question_provider.dart';

class QuestionModel {
  final String question;
  final String subtitle;
  final List<String> options;
  final bool textField;
  final bool limitScreen;
  final TextEditingController? controller;

  QuestionModel(
      {required this.question,
      required this.subtitle,
      this.textField = false,
      this.limitScreen = false,
      required this.options,
      this.controller});
}

final QuestionProvider questionProvider = QuestionProvider();

final List<QuestionModel> questions = [
  QuestionModel(
    question: 'Are You ?',
    subtitle: 'choose answer to customise the app for you',
    options: ['Employed', 'Unemployed', 'Running a Business'],
  ),
  QuestionModel(
    question: 'Do You Have Monthly Income ?',
    subtitle: 'choose answer to customise the app for you',
    options: ['Yes, I have', 'No, I Don’t'],
  ),
  QuestionModel(
      question: 'How Much ?',
      subtitle: 'press add button if you have multiple income source.',
      options: ['Enter Your Monthly Income'],
      textField: true,
      controller: questionProvider.salaryController),
  QuestionModel(
      question: 'Set Daily Spending Limit',
      subtitle: 'Set your daily spending limit',
      options: ['Enter Daily Limit'],
      limitScreen: true,
      textField: true,
      controller: questionProvider.spendingLimitController),
];
