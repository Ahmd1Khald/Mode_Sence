import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sensor/Core/constance/app_function.dart';
import 'package:sensor/Core/constance/my_colors.dart';
import 'package:sensor/Features/result/presentation/views/result_screen.dart';

import '../../../../Core/helpers/cachehelper.dart';

class UseSensorScreen extends StatefulWidget {
  const UseSensorScreen({Key? key}) : super(key: key);

  @override
  State<UseSensorScreen> createState() => _UseSensorScreenState();
}

class _UseSensorScreenState extends State<UseSensorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.creamColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 180,
                ),
                Text(
                  'Please press the button of the sensor to measure your heart rate and oxygen level',
                  textAlign: TextAlign.start,
                  textDirection: TextDirection.ltr,
                  style: GoogleFonts.rubik(
                    letterSpacing: 2,
                    decoration: TextDecoration.underline,
                    color: AppColors.appBackGroundColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.width * 0.15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        width: 2,
                        color: AppColors.appBackGroundColor,
                      )),
                  child: MaterialButton(
                    height: MediaQuery.of(context).size.width * 0.15,
                    child: Text(
                      'Pressed',
                      style: GoogleFonts.rubik(
                        letterSpacing: 2,
                        //decoration: TextDecoration.underline,
                        color: AppColors.appBackGroundColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                      ),
                    ),
                    onPressed: () {
                      CacheHelper.saveData(key: 'readed', value: false);
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
