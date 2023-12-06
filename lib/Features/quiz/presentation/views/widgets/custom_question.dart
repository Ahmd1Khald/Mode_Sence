import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sensor/Core/constance/app_variables.dart';

import '../../../../../Core/constance/my_colors.dart';

class CustomQuestion extends StatefulWidget {
  const CustomQuestion(
      {Key? key,
      required this.question,
      required this.ans1,
      required this.ans2,
      required this.ans3,
      //required this.selectedValue,
      required this.value1,
      required this.value2,
      required this.value3,
      required this.index})
      : super(key: key);

  final int index;
  final String question;
  final String ans1;
  final String ans2;
  final String ans3;
  final String value1;
  final String value2;
  final String value3;

  @override
  State<CustomQuestion> createState() => _CustomQuestionState();
}

class _CustomQuestionState extends State<CustomQuestion> {
  String selectedValue = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.question,
          textAlign: TextAlign.start,
          textDirection: TextDirection.ltr,
          style: GoogleFonts.rubik(
            letterSpacing: 2,
            decoration: TextDecoration.underline,
            color: MyColors.appBackGroundColor,
            fontWeight: FontWeight.w700,
            fontSize: 25,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: RadioListTile(
                fillColor:
                    const MaterialStatePropertyAll(MyColors.appBackGroundColor),
                activeColor: MyColors.creamColor,
                title: Text(
                  widget.ans1,
                  style: GoogleFonts.rubik(
                    letterSpacing: 2,
                    //decoration: TextDecoration.underline,
                    color: MyColors.appBackGroundColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
                value: widget.value1,
                groupValue: selectedValue,
                onChanged: (value) {
                  selectedValue = value!;
                  setState(() {});
                  print(value);
                  AppVariables.answers[widget.index] = value;
                },
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: RadioListTile(
                fillColor:
                    const MaterialStatePropertyAll(MyColors.appBackGroundColor),
                activeColor: MyColors.creamColor,
                title: Text(
                  widget.ans2,
                  style: GoogleFonts.rubik(
                    letterSpacing: 2,
                    //decoration: TextDecoration.underline,
                    color: MyColors.appBackGroundColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
                value: widget.value2,
                groupValue: selectedValue,
                onChanged: (value) {
                  selectedValue = value!;
                  setState(() {});
                  print(value);
                  AppVariables.answers[widget.index] = value;
                },
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: RadioListTile(
                fillColor:
                    const MaterialStatePropertyAll(MyColors.appBackGroundColor),
                activeColor: MyColors.creamColor,
                title: Text(
                  widget.ans3,
                  style: GoogleFonts.rubik(
                    letterSpacing: 2,
                    //decoration: TextDecoration.underline,
                    color: MyColors.appBackGroundColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
                value: widget.value3,
                groupValue: selectedValue,
                onChanged: (value) {
                  selectedValue = value!;
                  setState(() {});
                  print(value);
                  AppVariables.answers[widget.index] = value;
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
