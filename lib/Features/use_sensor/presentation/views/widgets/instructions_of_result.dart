import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class InstructionsOfResult extends StatelessWidget {
  const InstructionsOfResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          child: SfPdfViewer.asset(
        'assets/files/instructions.pdf',
        scrollDirection: PdfScrollDirection.vertical,
        maxZoomLevel: 100,
      )),
    );
  }
}
