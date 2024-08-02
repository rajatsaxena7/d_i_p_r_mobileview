// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class SynfusionflutterPdf extends StatefulWidget {
  const SynfusionflutterPdf({
    super.key,
    this.width,
    this.height,
    required this.pdfurl,
  });

  final double? width;
  final double? height;
  final String pdfurl;

  @override
  State<SynfusionflutterPdf> createState() => _SynfusionflutterPdfState();
}

class _SynfusionflutterPdfState extends State<SynfusionflutterPdf> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: SfPdfViewer.network(
        widget.pdfurl,
        enableDoubleTapZooming: true,
      ),
    );
  }
}
