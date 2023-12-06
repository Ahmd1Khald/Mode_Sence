import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sensor/Core/constance/assets_manager.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../../Core/constance/my_colors.dart';

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
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.width * 0.18,
                    decoration: BoxDecoration(
                        color: MyColors.creamColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                        child: Text(
                      'Instructions',
                      style: GoogleFonts.rubik(
                        fontSize: 24,
                        color: MyColors.appBackGroundColor,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: Container(
                      child: SfPdfViewer.asset(
                    'assets/files/instructions.pdf',
                    scrollDirection: PdfScrollDirection.vertical,
                    maxZoomLevel: 100,
                  )),
                ),
                Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: Image.asset(
                    AssetsManager.instructionImage,
                    fit: BoxFit.cover,
                    width: 80,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
