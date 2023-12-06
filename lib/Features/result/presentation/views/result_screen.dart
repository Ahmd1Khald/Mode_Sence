import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sensor/Core/constance/app_variables.dart';
import 'package:sensor/Features/result/presentation/views/widgets/instructions_of_result.dart';

import '../../../../Core/constance/app_function.dart';
import '../../../../Core/constance/my_colors.dart';
import '../../../../Core/servises/firebase_servise.dart';
import '../../../../Core/widgets/loading_screen.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DataSnapshot>(
      stream: FirebaseDataService().dataStream,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          DataSnapshot? data = snapshot.data;
          if (data!.value != null) {
            Object? oValue = snapshot.data!.child('SPO2').value;
            Object? hrValue = snapshot.data!.child('heart_rate').value;
            print(oValue);
            print(hrValue);
            if (oValue is int && oValue < 94) {
              AppVariables.xValue += 10;
            }
            if (hrValue is int && hrValue > 100 ||
                hrValue is int && hrValue < 60) {
              AppVariables.xValue += 10;
            }
            return Scaffold(
              backgroundColor: AppColors.appBackGroundColor,
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 40),
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Text(
                          'You have',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.rubik(
                            fontSize: 35,
                            color: AppColors.creamColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "${AppVariables.xValue}%",
                          style: GoogleFonts.rubik(
                            fontSize: 70,
                            color: AppColors.creamColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: Text(
                          'of Depression',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.rubik(
                            fontSize: 35,
                            color: AppColors.creamColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 120,
                      ),
                      InkWell(
                        splashColor: AppColors.appBackGroundColor,
                        onTap: () {
                          AppFunctions.pushTo(
                              context: context,
                              screen: const InstructionsOfResult());
                        },
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.file_present_sharp,
                              color: AppColors.creamColor,
                              size: MediaQuery.of(context).size.width * 0.3,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'INSTRUCTIONS',
                              style: GoogleFonts.rubik(
                                fontSize: 32,
                                color: AppColors.creamColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          } else {
            return const LoadingScreen();
          }
        } else {
          return const LoadingScreen();
        }
      },
    );
  }
}
