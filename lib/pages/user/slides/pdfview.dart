import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';


class PdfView extends StatelessWidget {
  
  const PdfView({Key ? key,required this.pdfname}) : super(key:key);
  final String pdfname;
  @override

Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text("Pdf_Viewer"),
    ),
    body: SfPdfViewer.asset(
      "assets/pdfs/${pdfname}.pdf"
    ),
  );
}}