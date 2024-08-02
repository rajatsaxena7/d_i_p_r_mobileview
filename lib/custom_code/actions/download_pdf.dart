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
import 'index.dart'; // Imports other custom actions
import 'package:permission_handler/permission_handler.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;
import 'package:open_file/open_file.dart';

Future<void> downloadPdf(String pdfUrl) async {
  try {
    print("Requesting storage permission...");
    var storageStatus = await Permission.storage.request();
    print("Permission status: ${storageStatus.isGranted}");

    if (storageStatus.isGranted) {
      print("Fetching PDF from URL: $pdfUrl");
      var response = await http.get(Uri.parse(pdfUrl));

      print("HTTP status code: ${response.statusCode}");
      if (response.statusCode == 200) {
        final filename = path.basename(pdfUrl);
        print("Filename extracted: $filename");

        final dir = await getExternalStorageDirectory();
        print("External storage directory: ${dir?.path}");

        if (dir != null) {
          final file = File('${dir.path}/$filename');
          print("File path: ${file.path}");

          await file.writeAsBytes(response.bodyBytes, flush: true);
          print("Download completed: ${file.path}");

          if (await file.exists()) {
            print("File exists, attempting to open...");
            var result = await OpenFile.open(file.path);
            print("Open file result: ${result.type}");
            if (result.type != ResultType.done) {
              print('Error opening file: ${result.message}');
            }
          } else {
            print('File does not exist: ${file.path}');
          }
        } else {
          print("External storage directory is not available.");
        }
      } else {
        print(
            'Failed to download file with status code: ${response.statusCode}');
      }
    } else {
      print('Storage permission denied');
    }
  } catch (e) {
    print('Exception caught during file download: $e');
  }
}
