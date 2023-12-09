import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sensor/Core/constance/assets_manager.dart';

import '../../../../Core/constance/my_colors.dart';
import 'widgets/custom_container.dart';

class InstructionsScreen extends StatefulWidget {
  const InstructionsScreen({Key? key}) : super(key: key);

  @override
  State<InstructionsScreen> createState() => _InstructionsScreenState();
}

class _InstructionsScreenState extends State<InstructionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.width * 0.2,
                    decoration: BoxDecoration(
                        color: AppColors.creamColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                        child: Text(
                      'Instructions',
                      style: GoogleFonts.rubik(
                        fontSize: 32,
                        color: AppColors.appBackGroundColor,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomContainer(
                  text:
                      'Don\'t use it if you have high pressure.\n\nDon\'t use it just after running or doing any exhausting activity.\n\nDon\'t use it in the early morning.\n\nDon\'t use it if you use any medicine that cause your pressure or heart beat rate to increase.\n\nBe sincere with yourself.',
                  fontSize: 24,
                ),
                const Spacer(),
                Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: Image.asset(
                    AssetsManager.instructionImage,
                    fit: BoxFit.cover,
                    width: 110,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
