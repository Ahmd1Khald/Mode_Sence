import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Core/constance/my_colors.dart';

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
      backgroundColor: MyColors.appBackGroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60,
              ),
              Text(
                "Mode Sence",
                textWidthBasis: TextWidthBasis.longestLine,
                style: GoogleFonts.anton(
                  color: MyColors.creamColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 60,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
