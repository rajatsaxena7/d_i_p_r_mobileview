import 'dart:async';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({super.key, required this.child});

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    if (mounted) {
      setState(() => _loading = true);
    }
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          pathParameters: parameterData.pathParameters,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                FlutterFlowTheme.of(context).primary,
              ),
            ),
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => const ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'HomePage': ParameterData.none(),
  'SignIn': ParameterData.none(),
  'RequestLetter': (data) async => ParameterData(
        allParams: {
          'adNo': getParameter<String>(data, 'adNo'),
        },
      ),
  'Raiseinvoice': (data) async => ParameterData(
        allParams: {
          'jobsllocationdoc':
              getParameter<DocumentReference>(data, 'jobsllocationdoc'),
        },
      ),
  'Caseworker_dashboard': ParameterData.none(),
  'Dashboard_Budget': ParameterData.none(),
  'Deputy_dashboard': ParameterData.none(),
  'viewDetails': ParameterData.none(),
  'statufe': ParameterData.none(),
  'Admin_CreateAccount': ParameterData.none(),
  'Admin_Dashboard': ParameterData.none(),
  'Admin_login_data': ParameterData.none(),
  'RequestLetterSummary': (data) async => ParameterData(
        allParams: {
          'docRef': getParameter<DocumentReference>(data, 'docRef'),
        },
      ),
  'EditRequestLetter': (data) async => ParameterData(
        allParams: {
          'addref': getParameter<DocumentReference>(data, 'addref'),
        },
      ),
  'Caseworker_RequestLetter': (data) async => ParameterData(
        allParams: {
          'adNo': getParameter<String>(data, 'adNo'),
        },
      ),
  'Caseworker_RequestLetterSummary': (data) async => ParameterData(
        allParams: {
          'docRef': getParameter<DocumentReference>(data, 'docRef'),
        },
      ),
  'Case_worker_Display_deocument': (data) async => ParameterData(
        allParams: {
          'advref': getParameter<DocumentReference>(data, 'advref'),
        },
      ),
  'invoiceAcknowlege': (data) async => ParameterData(
        allParams: {
          'approvedref': getParameter<DocumentReference>(data, 'approvedref'),
        },
      ),
  'Caseworker_RequestLetter_edit': (data) async => ParameterData(
        allParams: {
          'docRef': getParameter<DocumentReference>(data, 'docRef'),
        },
      ),
  'director_dashBoard': ParameterData.none(),
  'Fao_dashBoard': ParameterData.none(),
  'Deputy_RequestLetterSummary': (data) async => ParameterData(
        allParams: {
          'docRef': getParameter<DocumentReference>(data, 'docRef'),
        },
      ),
  'Deputy_RequestLetter_edit': (data) async => ParameterData(
        allParams: {
          'docRef': getParameter<DocumentReference>(data, 'docRef'),
        },
      ),
  'Admin_Caseworker_dashboard': ParameterData.none(),
  'Admin_Caseworker_RequestLetterSummary': (data) async => ParameterData(
        allParams: {
          'docRef': getParameter<DocumentReference>(data, 'docRef'),
        },
      ),
  'Admin_Deputy_dashboard': ParameterData.none(),
  'Admin_Deputy_RequestLetterSummary': (data) async => ParameterData(
        allParams: {
          'docRef': getParameter<DocumentReference>(data, 'docRef'),
        },
      ),
  'RoundAllocating': (data) async => ParameterData(
        allParams: {
          'advertisementref':
              getParameter<DocumentReference>(data, 'advertisementref'),
          'joblogic': getParameter<DocumentReference>(data, 'joblogic'),
        },
      ),
  'ProfilePage': ParameterData.none(),
  'Deputy_Search': ParameterData.none(),
  'Fao_details': (data) async => ParameterData(
        allParams: {
          'listofapproved':
              getParameter<DocumentReference>(data, 'listofapproved'),
          'assitantFb': getParameter<String>(data, 'assitantFb'),
          'ddFb': getParameter<String>(data, 'ddFb'),
          'faoFb': getParameter<String>(data, 'faoFb'),
          'dyFb': getParameter<String>(data, 'dyFb'),
          'secrefb': getParameter<String>(data, 'secrefb'),
        },
      ),
  'approveInvoice': (data) async => ParameterData(
        allParams: {
          'invoiceRef': getParameter<DocumentReference>(data, 'invoiceRef'),
          'advertiseref': getParameter<DocumentReference>(data, 'advertiseref'),
        },
      ),
  'Admin_Search': ParameterData.none(),
  'Caseworker_Search': ParameterData.none(),
  'Cloudfunctionstest': ParameterData.none(),
  'Assistant_dashboardCopy': (data) async => ParameterData(
        allParams: {
          'useref': getParameter<DocumentReference>(data, 'useref'),
        },
      ),
  'Caseworker_Request_type': (data) async => ParameterData(
        allParams: {
          'docRef': getParameter<DocumentReference>(data, 'docRef'),
        },
      ),
  'Caseworker_select_newspapers_manually': (data) async => ParameterData(
        allParams: {
          'docRef': getParameter<DocumentReference>(data, 'docRef'),
        },
      ),
  'allotingcasewoker': (data) async => ParameterData(
        allParams: {
          'advertisementref':
              getParameter<DocumentReference>(data, 'advertisementref'),
          'joblogic': getParameter<DocumentReference>(data, 'joblogic'),
        },
      ),
  'pdfview': (data) async => ParameterData(
        allParams: {
          'pdfurl': getParameter<String>(data, 'pdfurl'),
        },
      ),
  'Admin_login_dataCopy': ParameterData.none(),
  'vendorDashboardreal': ParameterData.none(),
  'Accountant_dashBoard': ParameterData.none(),
  'Accountant_all_invoice_details': (data) async => ParameterData(
        allParams: {
          'listofapproved':
              getParameter<DocumentReference>(data, 'listofapproved'),
          'assitantFb': getParameter<String>(data, 'assitantFb'),
          'ddFb': getParameter<String>(data, 'ddFb'),
          'faoFb': getParameter<String>(data, 'faoFb'),
          'dyFb': getParameter<String>(data, 'dyFb'),
          'secreFb': getParameter<String>(data, 'secreFb'),
        },
      ),
  'Accountant_view_Invoice': (data) async => ParameterData(
        allParams: {
          'invoiceRef': getParameter<DocumentReference>(data, 'invoiceRef'),
          'advertiseref': getParameter<DocumentReference>(data, 'advertiseref'),
        },
      ),
  'Vendor_details': ParameterData.none(),
  'admin_Vendor_invoice_list': (data) async => ParameterData(
        allParams: {
          'usererf': getParameter<DocumentReference>(data, 'usererf'),
        },
      ),
  'uploadSacntionletter': (data) async => ParameterData(
        allParams: {
          'listofapproved':
              getParameter<DocumentReference>(data, 'listofapproved'),
          'assitantFb': getParameter<String>(data, 'assitantFb'),
          'ddFb': getParameter<String>(data, 'ddFb'),
          'faoFb': getParameter<String>(data, 'faoFb'),
          'dyFb': getParameter<String>(data, 'dyFb'),
          'screfb': getParameter<String>(data, 'screfb'),
        },
      ),
  'Secretary_Dashboard': ParameterData.none(),
  'VendorsearchpageInvoiceindividual': ParameterData.none(),
  'Invoiceseedeatislsearch': (data) async => ParameterData(
        allParams: {
          'joballocationdoc':
              getParameter<DocumentReference>(data, 'joballocationdoc'),
        },
      ),
  'NotesheetIndividualdepartmentsearch': ParameterData.none(),
  'NotesheetIndividualDetails': (data) async => ParameterData(
        allParams: {
          'joballocationdoc':
              getParameter<DocumentReference>(data, 'joballocationdoc'),
        },
      ),
  'ClerkDashboard': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
