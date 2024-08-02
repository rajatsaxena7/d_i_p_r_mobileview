import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const HomePageWidget() : const SignInWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const HomePageWidget() : const SignInWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          requireAuth: true,
          builder: (context, params) => const HomePageWidget(),
        ),
        FFRoute(
          name: 'SignIn',
          path: '/signIn',
          builder: (context, params) => const SignInWidget(),
        ),
        FFRoute(
          name: 'RequestLetter',
          path: '/requestLetter',
          requireAuth: true,
          builder: (context, params) => RequestLetterWidget(
            adNo: params.getParam(
              'adNo',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Raiseinvoice',
          path: '/raiseinvoice',
          requireAuth: true,
          builder: (context, params) => RaiseinvoiceWidget(
            jobsllocationdoc: params.getParam(
              'jobsllocationdoc',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['NewspaperJobAllocation'],
            ),
          ),
        ),
        FFRoute(
          name: 'Caseworker_dashboard',
          path: '/caseworkerDashboard',
          builder: (context, params) => const CaseworkerDashboardWidget(),
        ),
        FFRoute(
          name: 'Dashboard_Budget',
          path: '/dashboardBudget',
          requireAuth: true,
          builder: (context, params) => const DashboardBudgetWidget(),
        ),
        FFRoute(
          name: 'Deputy_dashboard',
          path: '/deputyDashboard',
          requireAuth: true,
          builder: (context, params) => const DeputyDashboardWidget(),
        ),
        FFRoute(
          name: 'viewDetails',
          path: '/viewDetails',
          requireAuth: true,
          builder: (context, params) => const ViewDetailsWidget(),
        ),
        FFRoute(
          name: 'statufe',
          path: '/statufe',
          requireAuth: true,
          builder: (context, params) => const StatufeWidget(),
        ),
        FFRoute(
          name: 'Admin_CreateAccount',
          path: '/adminCreateAccount',
          builder: (context, params) => const AdminCreateAccountWidget(),
        ),
        FFRoute(
          name: 'Admin_Dashboard',
          path: '/adminDashboard',
          requireAuth: true,
          builder: (context, params) => const AdminDashboardWidget(),
        ),
        FFRoute(
          name: 'Admin_login_data',
          path: '/adminLoginData',
          requireAuth: true,
          builder: (context, params) => const AdminLoginDataWidget(),
        ),
        FFRoute(
          name: 'RequestLetterSummary',
          path: '/requestLetterSummary',
          requireAuth: true,
          builder: (context, params) => RequestLetterSummaryWidget(
            docRef: params.getParam(
              'docRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Advertisement'],
            ),
          ),
        ),
        FFRoute(
          name: 'EditRequestLetter',
          path: '/editRequestLetter',
          requireAuth: true,
          builder: (context, params) => EditRequestLetterWidget(
            addref: params.getParam(
              'addref',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Advertisement'],
            ),
          ),
        ),
        FFRoute(
          name: 'Caseworker_RequestLetter',
          path: '/caseworkerRequestLetter',
          requireAuth: true,
          builder: (context, params) => CaseworkerRequestLetterWidget(
            adNo: params.getParam(
              'adNo',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Caseworker_RequestLetterSummary',
          path: '/caseworkerRequestLetterSummary',
          requireAuth: true,
          builder: (context, params) => CaseworkerRequestLetterSummaryWidget(
            docRef: params.getParam(
              'docRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Advertisement'],
            ),
          ),
        ),
        FFRoute(
          name: 'Case_worker_Display_deocument',
          path: '/caseWorkerDisplayDeocument',
          requireAuth: true,
          builder: (context, params) => CaseWorkerDisplayDeocumentWidget(
            advref: params.getParam(
              'advref',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Advertisement'],
            ),
          ),
        ),
        FFRoute(
          name: 'invoiceAcknowlege',
          path: '/invoiceAcknowlege',
          requireAuth: true,
          builder: (context, params) => InvoiceAcknowlegeWidget(
            approvedref: params.getParam(
              'approvedref',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['approved_add'],
            ),
          ),
        ),
        FFRoute(
          name: 'Caseworker_RequestLetter_edit',
          path: '/caseworkerRequestLetterEdit',
          requireAuth: true,
          builder: (context, params) => CaseworkerRequestLetterEditWidget(
            docRef: params.getParam(
              'docRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Advertisement'],
            ),
          ),
        ),
        FFRoute(
          name: 'director_dashBoard',
          path: '/directorDashBoard',
          requireAuth: true,
          builder: (context, params) => const DirectorDashBoardWidget(),
        ),
        FFRoute(
          name: 'Fao_dashBoard',
          path: '/faoDashBoard',
          requireAuth: true,
          builder: (context, params) => const FaoDashBoardWidget(),
        ),
        FFRoute(
          name: 'Deputy_RequestLetterSummary',
          path: '/deputyRequestLetterSummary',
          requireAuth: true,
          builder: (context, params) => DeputyRequestLetterSummaryWidget(
            docRef: params.getParam(
              'docRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Advertisement'],
            ),
          ),
        ),
        FFRoute(
          name: 'Deputy_RequestLetter_edit',
          path: '/deputyRequestLetterEdit',
          requireAuth: true,
          builder: (context, params) => DeputyRequestLetterEditWidget(
            docRef: params.getParam(
              'docRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Advertisement'],
            ),
          ),
        ),
        FFRoute(
          name: 'Admin_Caseworker_dashboard',
          path: '/adminCaseworkerDashboard',
          requireAuth: true,
          builder: (context, params) => const AdminCaseworkerDashboardWidget(),
        ),
        FFRoute(
          name: 'Admin_Caseworker_RequestLetterSummary',
          path: '/adminCaseworkerRequestLetterSummary',
          requireAuth: true,
          builder: (context, params) =>
              AdminCaseworkerRequestLetterSummaryWidget(
            docRef: params.getParam(
              'docRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Advertisement'],
            ),
          ),
        ),
        FFRoute(
          name: 'Admin_Deputy_dashboard',
          path: '/adminDeputyDashboard',
          requireAuth: true,
          builder: (context, params) => const AdminDeputyDashboardWidget(),
        ),
        FFRoute(
          name: 'Admin_Deputy_RequestLetterSummary',
          path: '/adminDeputyRequestLetterSummary',
          requireAuth: true,
          builder: (context, params) => AdminDeputyRequestLetterSummaryWidget(
            docRef: params.getParam(
              'docRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Advertisement'],
            ),
          ),
        ),
        FFRoute(
          name: 'RoundAllocating',
          path: '/roundAllocating',
          requireAuth: true,
          builder: (context, params) => RoundAllocatingWidget(
            advertisementref: params.getParam(
              'advertisementref',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Advertisement'],
            ),
            waitinglist2documents: params.getParam<DocumentReference>(
              'waitinglist2documents',
              ParamType.DocumentReference,
              isList: true,
              collectionNamePath: ['Users'],
            ),
            joblogic: params.getParam(
              'joblogic',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['joblogic'],
            ),
          ),
        ),
        FFRoute(
          name: 'ProfilePage',
          path: '/profilePage',
          requireAuth: true,
          builder: (context, params) => const ProfilePageWidget(),
        ),
        FFRoute(
          name: 'Deputy_Search',
          path: '/deputySearch',
          requireAuth: true,
          builder: (context, params) => const DeputySearchWidget(),
        ),
        FFRoute(
          name: 'Fao_details',
          path: '/faoDetails',
          requireAuth: true,
          builder: (context, params) => FaoDetailsWidget(
            listofapproved: params.getParam(
              'listofapproved',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['approved_add'],
            ),
            assitantFb: params.getParam(
              'assitantFb',
              ParamType.String,
            ),
            ddFb: params.getParam(
              'ddFb',
              ParamType.String,
            ),
            faoFb: params.getParam(
              'faoFb',
              ParamType.String,
            ),
            dyFb: params.getParam(
              'dyFb',
              ParamType.String,
            ),
            secrefb: params.getParam(
              'secrefb',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'approveInvoice',
          path: '/approveInvoice',
          requireAuth: true,
          builder: (context, params) => ApproveInvoiceWidget(
            invoiceRef: params.getParam(
              'invoiceRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Invoice_Request'],
            ),
            advertiseref: params.getParam(
              'advertiseref',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Advertisement'],
            ),
          ),
        ),
        FFRoute(
          name: 'Admin_Search',
          path: '/adminSearch',
          requireAuth: true,
          builder: (context, params) => const AdminSearchWidget(),
        ),
        FFRoute(
          name: 'Caseworker_Search',
          path: '/caseworkerSearch',
          requireAuth: true,
          builder: (context, params) => const CaseworkerSearchWidget(),
        ),
        FFRoute(
          name: 'Cloudfunctionstest',
          path: '/cloudfunctionstest',
          requireAuth: true,
          builder: (context, params) => const CloudfunctionstestWidget(),
        ),
        FFRoute(
          name: 'Assistant_dashboardCopy',
          path: '/assistantDashboardCopy',
          requireAuth: true,
          builder: (context, params) => AssistantDashboardCopyWidget(
            useref: params.getParam(
              'useref',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Users'],
            ),
          ),
        ),
        FFRoute(
          name: 'Caseworker_Request_type',
          path: '/caseworkerRequestType',
          requireAuth: true,
          builder: (context, params) => CaseworkerRequestTypeWidget(
            docRef: params.getParam(
              'docRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Advertisement'],
            ),
          ),
        ),
        FFRoute(
          name: 'Caseworker_select_newspapers_manually',
          path: '/caseworkerSelectNewspapersManually',
          requireAuth: true,
          builder: (context, params) =>
              CaseworkerSelectNewspapersManuallyWidget(
            docRef: params.getParam(
              'docRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Advertisement'],
            ),
          ),
        ),
        FFRoute(
          name: 'allotingcasewoker',
          path: '/allotingcasewoker',
          requireAuth: true,
          builder: (context, params) => AllotingcasewokerWidget(
            advertisementref: params.getParam(
              'advertisementref',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Advertisement'],
            ),
            allwaitinglist: params.getParam<DocumentReference>(
              'allwaitinglist',
              ParamType.DocumentReference,
              isList: true,
              collectionNamePath: ['Users'],
            ),
            joblogic: params.getParam(
              'joblogic',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['joblogic'],
            ),
          ),
        ),
        FFRoute(
          name: 'pdfview',
          path: '/pdfview',
          builder: (context, params) => PdfviewWidget(
            pdfurl: params.getParam(
              'pdfurl',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Admin_login_dataCopy',
          path: '/adminLoginDataCopy',
          requireAuth: true,
          builder: (context, params) => const AdminLoginDataCopyWidget(),
        ),
        FFRoute(
          name: 'vendorDashboardreal',
          path: '/vendorDashboardreal',
          requireAuth: true,
          builder: (context, params) => const VendorDashboardrealWidget(),
        ),
        FFRoute(
          name: 'Accountant_dashBoard',
          path: '/accountantDashBoard',
          requireAuth: true,
          builder: (context, params) => const AccountantDashBoardWidget(),
        ),
        FFRoute(
          name: 'Accountant_all_invoice_details',
          path: '/accountantAllInvoiceDetails',
          requireAuth: true,
          builder: (context, params) => AccountantAllInvoiceDetailsWidget(
            listofapproved: params.getParam(
              'listofapproved',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['approved_add'],
            ),
            assitantFb: params.getParam(
              'assitantFb',
              ParamType.String,
            ),
            ddFb: params.getParam(
              'ddFb',
              ParamType.String,
            ),
            faoFb: params.getParam(
              'faoFb',
              ParamType.String,
            ),
            dyFb: params.getParam(
              'dyFb',
              ParamType.String,
            ),
            secreFb: params.getParam(
              'secreFb',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Accountant_view_Invoice',
          path: '/accountantViewInvoice',
          requireAuth: true,
          builder: (context, params) => AccountantViewInvoiceWidget(
            invoiceRef: params.getParam(
              'invoiceRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Invoice_Request'],
            ),
            advertiseref: params.getParam(
              'advertiseref',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Advertisement'],
            ),
          ),
        ),
        FFRoute(
          name: 'Vendor_details',
          path: '/vendorDetails',
          builder: (context, params) => const VendorDetailsWidget(),
        ),
        FFRoute(
          name: 'admin_Vendor_invoice_list',
          path: '/adminVendorInvoiceList',
          builder: (context, params) => AdminVendorInvoiceListWidget(
            usererf: params.getParam(
              'usererf',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Users'],
            ),
          ),
        ),
        FFRoute(
          name: 'uploadSacntionletter',
          path: '/uploadSacntionletter',
          requireAuth: true,
          builder: (context, params) => UploadSacntionletterWidget(
            listofapproved: params.getParam(
              'listofapproved',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['approved_add'],
            ),
            assitantFb: params.getParam(
              'assitantFb',
              ParamType.String,
            ),
            ddFb: params.getParam(
              'ddFb',
              ParamType.String,
            ),
            faoFb: params.getParam(
              'faoFb',
              ParamType.String,
            ),
            dyFb: params.getParam(
              'dyFb',
              ParamType.String,
            ),
            screfb: params.getParam(
              'screfb',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Secretary_Dashboard',
          path: '/secretaryDashboard',
          requireAuth: true,
          builder: (context, params) => const SecretaryDashboardWidget(),
        ),
        FFRoute(
          name: 'VendorsearchpageInvoiceindividual',
          path: '/vendorsearchpageInvoiceindividual',
          requireAuth: true,
          builder: (context, params) =>
              const VendorsearchpageInvoiceindividualWidget(),
        ),
        FFRoute(
          name: 'Invoiceseedeatislsearch',
          path: '/invoiceseedeatislsearch',
          requireAuth: true,
          builder: (context, params) => InvoiceseedeatislsearchWidget(
            joballocationdoc: params.getParam(
              'joballocationdoc',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['NewspaperJobAllocation'],
            ),
          ),
        ),
        FFRoute(
          name: 'NotesheetIndividualdepartmentsearch',
          path: '/notesheetIndividualdepartmentsearch',
          requireAuth: true,
          builder: (context, params) =>
              const NotesheetIndividualdepartmentsearchWidget(),
        ),
        FFRoute(
          name: 'NotesheetIndividualDetails',
          path: '/notesheetIndividualDetails',
          requireAuth: true,
          builder: (context, params) => NotesheetIndividualDetailsWidget(
            joballocationdoc: params.getParam(
              'joballocationdoc',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['approved_add'],
            ),
          ),
        ),
        FFRoute(
          name: 'ClerkDashboard',
          path: '/clerkDashboard',
          builder: (context, params) => const ClerkDashboardWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/signIn';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
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
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
