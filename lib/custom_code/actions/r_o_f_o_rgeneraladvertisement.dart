// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart' as http;
import 'dart:typed_data';
import 'package:pdf/widgets.dart' as pw;
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

Future<Uint8List> fetchImageData(String imageUrl) async {
  final response = await http.get(Uri.parse(imageUrl));
  if (response.statusCode == 200) {
    return response.bodyBytes;
  } else {
    throw Exception('Failed to load image');
  }
}

Future<String> rOFORgeneraladvertisement(
  String noipr,
  DateTime dated,
  String releaseorderno,
  String departmentname,
  String bearingno,
  DateTime dated2,
  String facesize,
  String insertion,
  String edition,
  DateTime dateofPublication,
  String department2,
  List<String> copyforwadedto,
) async {
  pw.Widget buildNumericalList(List<String> items) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: List.generate(items.length, (index) {
        // For each item, create a row with the numeric label and the item content
        return pw.Row(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Text('${index + 1}. ',
                style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
            pw.Expanded(child: pw.Text(items[index])),
          ],
        );
      }),
    );
  }

  pw.Widget buildNumericalList2(List<String> items) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: List.generate(items.length, (index) {
        // For each item, create a row with the numeric label and the item content
        return pw.Row(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Text('${index + 1}. ',
                style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
            pw.Expanded(child: pw.Text(items[index])),
          ],
        );
      }),
    );
  }

  // Add your function code here!
  final pdf = pw.Document();
  const String imageUrl =
      'https://t4.ftcdn.net/jpg/05/76/03/95/360_F_576039567_dNrcK76lhaCnoR7iFGCrK6YRECLjNKgv.png';
  final Uint8List imageData = await fetchImageData(imageUrl);
  pdf.addPage(
    pw.MultiPage(
      build: (pw.Context context) {
        return [
          // Header
          pw.Center(
            child: pw.Paragraph(
                padding: const pw.EdgeInsets.only(top: 20),
                text: 'RELEASE ORDER FOR GENERAL ADVERTISEMENT',
                style: pw.TextStyle(
                  fontSize: 12,
                  fontWeight: pw.FontWeight.bold,
                )),
          ),
          pw.Center(
            child: pw.Paragraph(
                padding: const pw.EdgeInsets.only(top: 10),
                text: 'Government Of Arunachal Pradesh',
                style:
                    pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          ),
          pw.Center(
            heightFactor: 1,
            child: pw.Paragraph(

                // padding: pw.EdgeInsets.only(left: 250),

                text: 'Directorate Of Information & Public & Relations',
                style:
                    pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          ),
          pw.Center(
            child: pw.Paragraph(

                // padding: pw.EdgeInsets.only(left: 250),

                text: 'Papunallah, Naharlagun-791110',
                style:
                    pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          ),
          pw.Center(
            child: pw.Paragraph(

                // padding: pw.EdgeInsets.only(left: 250),

                text: 'Email:diprarunadvt@gmail.com',
                style:
                    pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          ),

          pw.Paragraph(
              padding: const pw.EdgeInsets.only(top: 10),
              text: 'NO.IPR(ADVT)/$noipr',
              style: const pw.TextStyle(
                fontSize: 10,
              )),
          pw.Align(
            alignment: pw.Alignment.topRight,
            child: pw.Paragraph(
                padding: const pw.EdgeInsets.only(top: 5),
                text: 'Dated, Naharlagun the $dated',
                style: const pw.TextStyle(
                  fontSize: 10,
                )),
          ),

          pw.Center(
            child: pw.Paragraph(
              text: 'RELEASE ORDER NO.DIPR/ARN-$releaseorderno/2022',
              style: pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold),
            ),
          ),
          pw.Paragraph(
            text: 'Dear Sir,',
            style: const pw.TextStyle(fontSize: 12),
          ),
          pw.Paragraph(
            text:
                'Kindly arrange to publish the enclosed Advt. of $departmentname bearing $bearingno dated $dated2 as under-: ',
            style: const pw.TextStyle(fontSize: 12),
          ),
          buildNumericalList([
            'Type Face&Size       : $facesize',
            'Insertion            : $insertion',
            'Edition              : $edition',
            'Date Of Publication  : $dated2',
            // Add more items as needed
          ]),
          pw.Paragraph(
            padding: pw.EdgeInsets.fromLTRB(20, 10, 0, 0),
            text:
                'The bill in triplicate indicating the Release Order along with a copy of VTS may be submitted to $department2 Director,Information and Public Relations ,Papunullah, Naharlagun,Papumpare District,Arunachal Pradesh-791110  for Payment.',
            style: pw.TextStyle(
              fontSize: 12,
            ),
          ),
          pw.Paragraph(
            padding: pw.EdgeInsets.fromLTRB(20, 0, 0, 0),
            text:
                'Kindly send a copy of news paper immediately to advertisement cell of DIPR or e-copy of the newspaper on publication to diprarunadvt@gmail.com for reference.',
            style: pw.TextStyle(
              fontSize: 12,
            ),
          ),
          pw.Paragraph(
            padding: pw.EdgeInsets.fromLTRB(0, 10, 0, 0),
            text: 'Copy forwaded for publication to:',
            style: pw.TextStyle(
              fontSize: 12,
            ),
          ),
          buildNumericalList2(copyforwadedto),
          pw.Align(
            alignment: pw.Alignment.topRight,
            child: pw.Paragraph(
                padding: const pw.EdgeInsets.only(top: 30),
                text: 'For Director,',
                style: const pw.TextStyle(
                  fontSize: 8,
                )),
          ),
          pw.Align(
            alignment: pw.Alignment.bottomRight,
            child: pw.Paragraph(
                padding: const pw.EdgeInsets.only(top: 0),
                text: 'Information & Public Relations',
                style: const pw.TextStyle(
                  fontSize: 8,
                )),
          ),
        ];
      },
    ),
  );

  Uint8List pdfInBytes = await pdf.save();

  String fileName = 'ROForGeneralAdvertisements.pdf';
  firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
      .ref()
      .child('documents/$fileName');

  firebase_storage.UploadTask uploadTask = ref.putData(pdfInBytes);
  await uploadTask;

  String downloadUrl = await ref.getDownloadURL();
  return downloadUrl;
}
