import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sensor/Core/constance/app_function.dart';

import '../../../../Core/constance/my_colors.dart';
import '../../../instructions/presentation/views/instructions_screen.dart';
import '../../../use_sensor/presentation/views/result_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.creamColor,
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: InkWell(
                  splashColor: AppColors.creamColor,
                  onTap: () {
                    AppFunctions.pushTo(
                        context: context, screen: const InstructionsScreen());
                  },
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.document_scanner,
                        color: AppColors.appBackGroundColor,
                        size: MediaQuery.of(context).size.width * 0.3,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'INSTRUCTIONS',
                        style: GoogleFonts.rubik(
                          fontSize: 32,
                          color: AppColors.appBackGroundColor,
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
                  splashColor: AppColors.creamColor,
                  onTap: () {
                    AppFunctions.pushTo(
                        context: context, screen: const UseSensorScreen());
                  },
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.play_circle,
                        color: AppColors.appBackGroundColor,
                        size: MediaQuery.of(context).size.width * 0.3,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'START',
                        style: GoogleFonts.rubik(
                          fontSize: 32,
                          color: AppColors.appBackGroundColor,
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
