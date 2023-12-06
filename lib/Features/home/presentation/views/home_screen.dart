import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sensor/Core/constance/app_function.dart';
import 'package:sensor/Features/structions/presentation/views/instructions_screen.dart';

import '../../../../Core/constance/my_colors.dart';
import '../../../quiz/presentation/views/quiz_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showCheckButton = true;
  // final databaseReference =
  //     FirebaseDatabase.instance.ref('Embedded/Action needed/value');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.creamColor,
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: InkWell(
                  splashColor: MyColors.creamColor,
                  onTap: () {
                    AppFunctions.pushTo(
                        context: context, screen: const InstructionsScreen());
                  },
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.document_scanner,
                        color: MyColors.appBackGroundColor,
                        size: MediaQuery.of(context).size.width * 0.3,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'INSTRUCTIONS',
                        style: GoogleFonts.rubik(
                          fontSize: 32,
                          color: MyColors.appBackGroundColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.2,
              ),
              Center(
                child: InkWell(
                  splashColor: MyColors.creamColor,
                  onTap: () {
                    AppFunctions.pushTo(
                        context: context, screen: const QuizScreen());
                  },
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.play_circle,
                        color: MyColors.appBackGroundColor,
                        size: MediaQuery.of(context).size.width * 0.3,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'START',
                        style: GoogleFonts.rubik(
                          fontSize: 32,
                          color: MyColors.appBackGroundColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
