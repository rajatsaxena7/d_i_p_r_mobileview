import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String advNumber() {
  // write a function to generate a unique number which has "WCD" following current date
  String currentDate = DateFormat('yyyyMMdd').format(DateTime.now());
  int randomNum = math.Random().nextInt(10000);
  return 'ADVT$currentDate$randomNum';
}

String rONumber() {
  // write a function to generate a unique number which has "WCD" following current date
  String currentDate = DateFormat('yyyyMMdd').format(DateTime.now());
  int randomNum = math.Random().nextInt(10000);
  return 'RO$currentDate$randomNum';
}

int stringtoint(String value) {
  // write a function to convert a string into integer
  return int.parse(value);
}

double subtractBudget(
  double total,
  double raised,
) {
  // write a function to subtract
  return total - raised;
}

List<DocumentReference>? returnfirsttwousers(
    List<DocumentReference>? waitinglistusers) {
  if (waitinglistusers == null || waitinglistusers.isEmpty) {
    return waitinglistusers;
  } else {
    return waitinglistusers.take(2).toList();
  }
}

bool? returntrueforlessthen1hourdifference(DateTime times) {
  // function to check whetehr the passed time is less than 7pm of the indian time
  final indianTime =
      DateTime.now().toUtc().add(Duration(hours: 5, minutes: 30));
  final indian7pm =
      DateTime(indianTime.year, indianTime.month, indianTime.day, 19, 0, 0);
  return times.isBefore(indian7pm);
}

double stringtodouble(String value) {
  // write a function to convert a string into integer
  return double.parse(value);
}

List<DocumentReference>? remove1andadd1atendCopy(
    List<DocumentReference>? waitinglist) {
  // Check if the list is not null and has at least two elements
  if (waitinglist != null && waitinglist.length >= 2) {
    // Remove the first two elements and store them in variables
    var firstElement = waitinglist.removeAt(0);
    // Note: After removing the first, the second becomes the first

    // Add the removed elements to the end of the list
    waitinglist..add(firstElement);
  }

  // Return the modified list
  return waitinglist;
}

double addAmount(List<ListofapprovedStruct> invoice) {
  double value = 0.0;

  for (var items in invoice) {
    double? parsedValue = items.amount;
    if (parsedValue != null) {
      value = value + parsedValue;
    }
  }
  return value;
}

List<DocumentReference>? returnfulllisremoving2(
    List<DocumentReference>? waitinglist) {
  if (waitinglist == null || waitinglist.isEmpty) {
    return waitinglist;
  } else {
    return waitinglist.skip(2).toList();
  }
}

List<DocumentReference>? remove2andadd2atend(
    List<DocumentReference>? waitinglist) {
  // Check if the list is not null and has at least two elements
  if (waitinglist != null && waitinglist.length >= 2) {
    // Remove the first two elements and store them in variables
    var firstElement = waitinglist.removeAt(0);
    var secondElement = waitinglist.removeAt(
        0); // Note: After removing the first, the second becomes the first

    // Add the removed elements to the end of the list
    waitinglist
      ..add(firstElement)
      ..add(secondElement);
  }

  // Return the modified list
  return waitinglist;
}

String rOnumberNEW(int ronumber) {
  String formattedNumber = ronumber.toString().padLeft(6, '0');
  // Generate the release order number
  String releaseOrderNumber = 'DIPR/ARN/$formattedNumber';
  return releaseOrderNumber;
}

DateTime formatdate(DateTime date) {
  final formatter = DateFormat.yMMMd();
  final formattedString = formatter.format(date);
  final formattedDateTime = formatter.parse(formattedString);
  return formattedDateTime;
}

int index(int indexinList) {
  return indexinList + 1;
}

DateTime return7pmdatetime(DateTime currnttime) {
  DateTime sevenPM =
      DateTime(currnttime.year, currnttime.month, currnttime.day, 19, 0);
  return sevenPM;
}

double? totalinvoiceamoutcalculate(List<double> values) {
  double total = 0.0;
  for (double value in values) {
    total += value;
  }
  return total;
}

String listOfintosinglestring(List<String> listOFstring) {
  // write a function convert a lsit of string into single string data sepearted by comma
  return listOFstring.join(',');
}
