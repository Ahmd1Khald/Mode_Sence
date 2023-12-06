import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sensor/Core/constance/app_function.dart';
import 'package:sensor/Core/constance/app_variables.dart';
import 'package:sensor/Core/constance/my_colors.dart';
import 'package:sensor/Features/quiz/presentation/views/widgets/custom_question.dart';

import '../../../result/presentation/views/result_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  String selectedValue1 = '';
  String selectedValue2 = '';
  String selectedValue3 = '';
  String selectedValue4 = '';
  String selectedValue5 = '';
  String selectedValue6 = '';
  String selectedValue7 = '';
  String selectedValue8 = '';
  String selectedValue9 = '';
  String selectedValue10 = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.creamColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const CustomQuestion(
                  question:
                      '1-	Average continuous sleeping hours in the last period',
                  ans1: '6-9',
                  ans2: 'Less than 4 hours',
                  ans3: 'More than 10',
                  value1: '1',
                  value2: '2',
                  value3: '3',
                  index: 0,
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomQuestion(
                  question: '2-	Weight compared to the last month',
                  ans1: 'Increased',
                  ans2: 'Decreased',
                  ans3: 'No change',
                  value1: '4',
                  value2: '5',
                  value3: '6',
                  index: 1,
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomQuestion(
                  question: '3-	Types of thoughts currently',
                  ans1: 'Normal or depends on the day',
                  ans2: 'Black, hopeless, or suicidal ',
                  ans3: 'Hyper or mostly hopeful and creative',
                  value1: '7',
                  value2: '8',
                  value3: '9',
                  index: 2,
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomQuestion(
                  question:
                      '4-	Average times of leaving home ,with no essential purpose, compared to last month',
                  ans1: 'Increased',
                  ans2: 'Decreased',
                  ans3: 'No change',
                  value1: '10',
                  value2: '11',
                  value3: '12',
                  index: 3,
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomQuestion(
                  question: '5-	Your energy throughout the last period',
                  ans1: 'Hyper',
                  ans2: 'Exhausted',
                  ans3: 'Depending on the day',
                  value1: '13',
                  value2: '14',
                  value3: '15',
                  index: 4,
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomQuestion(
                  question:
                      '6-	Conversations with the family rate compared to the last month',
                  ans1: 'Increased',
                  ans2: 'Decreased',
                  ans3: 'No change ',
                  value1: '16',
                  value2: '17',
                  value3: '18',
                  index: 5,
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomQuestion(
                  question: '7-	The way of passing time in the last period',
                  ans1: 'Social media',
                  ans2: 'Writing, drawing, ……., etc',
                  ans3: 'Nothing',
                  value1: '19',
                  value2: '20',
                  value3: '21',
                  index: 6,
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomQuestion(
                  question: '8-	Your feels towards yourself',
                  ans1: 'Love',
                  ans2: 'Hate or guilt',
                  ans3: 'No feelings ',
                  value1: '22',
                  value2: '23',
                  value3: '24',
                  index: 7,
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomQuestion(
                  question: '9-	Your feelings when you fail',
                  ans1: 'You worth it',
                  ans2: 'Sadness',
                  ans3: 'No reaction',
                  value1: '25',
                  value2: '26',
                  value3: '27',
                  index: 8,
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomQuestion(
                  question: '10- Changes in work',
                  ans1: 'Became more creative and energetic',
                  ans2: 'Slow rate',
                  ans3: 'The usual ',
                  value1: '28',
                  value2: '29',
                  value3: '30',
                  index: 9,
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.width * 0.15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        width: 2,
                        color: MyColors.appBackGroundColor,
                      )),
                  child: MaterialButton(
                    height: MediaQuery.of(context).size.width * 0.15,
                    child: Text(
                      'Result',
                      style: GoogleFonts.rubik(
                        letterSpacing: 2,
                        decoration: TextDecoration.underline,
                        color: MyColors.appBackGroundColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                      ),
                    ),
                    onPressed: () {
                      for (int i = 0; i < AppVariables.answers.length; i++) {
                        if (AppVariables.answers[i] == 2.toString() ||
                            AppVariables.answers[i] == 11.toString() ||
                            AppVariables.answers[i] == 17.toString() ||
                            AppVariables.answers[i] == 29.toString()) {
                          AppVariables.xValue += 5;
                        } else if (AppVariables.answers[i] == 5.toString() ||
                            AppVariables.answers[i] == 8.toString() ||
                            AppVariables.answers[i] == 14.toString() ||
                            AppVariables.answers[i] == 21.toString() ||
                            AppVariables.answers[i] == 23.toString() ||
                            AppVariables.answers[i] == 24.toString() ||
                            AppVariables.answers[i] == 27.toString()) {
                          AppVariables.xValue += 10;
                        }
                      }
                      print("AppVariables.answers");
                      print(AppVariables.answers);
                      print("AppVariables.xValue");
                      print(AppVariables.xValue);

                      AppFunctions.pushTo(
                          context: context, screen: const ResultScreen());
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
