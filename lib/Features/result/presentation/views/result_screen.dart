import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sensor/Core/constance/app_variables.dart';

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
            if (oValue is int && oValue > 100) {
              AppVariables.xValue += 10;
            }
            if (hrValue is int && hrValue > 100) {
              AppVariables.xValue += 10;
            }
            return Scaffold(
              backgroundColor: MyColors.appBackGroundColor,
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 80),
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Text(
                          'The Result is :',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.rubik(
                            fontSize: 35,
                            color: MyColors.creamColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Center(
                        child: Text(
                          AppVariables.xValue.toString(),
                          style: GoogleFonts.rubik(
                            fontSize: 70,
                            color: MyColors.creamColor,
                            fontWeight: FontWeight.w500,
                          ),
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
