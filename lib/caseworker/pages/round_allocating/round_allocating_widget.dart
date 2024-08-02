import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'round_allocating_model.dart';
export 'round_allocating_model.dart';

class RoundAllocatingWidget extends StatefulWidget {
  const RoundAllocatingWidget({
    super.key,
    required this.advertisementref,
    required this.waitinglist2documents,
    required this.joblogic,
  });

  final DocumentReference? advertisementref;
  final List<DocumentReference>? waitinglist2documents;
  final DocumentReference? joblogic;

  @override
  State<RoundAllocatingWidget> createState() => _RoundAllocatingWidgetState();
}

class _RoundAllocatingWidgetState extends State<RoundAllocatingWidget>
    with TickerProviderStateMixin {
  late RoundAllocatingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RoundAllocatingModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.timerController.onStartTimer();
      setState(() {
        _model.isvisible = true;
      });

      await NewspaperJobAllocationRecord.collection
          .doc()
          .set(createNewspaperJobAllocationRecordData(
            timeofallotment: getCurrentTimestamp,
            acknowledgedboolean: false,
            newspaperrefuserref: widget.waitinglist2documents?.first,
            adref: widget.advertisementref,
            completed: false,
          ));

      await NewspaperJobAllocationRecord.collection
          .doc()
          .set(createNewspaperJobAllocationRecordData(
            timeofallotment: getCurrentTimestamp,
            acknowledgedboolean: false,
            newspaperrefuserref: widget.waitinglist2documents?[1],
            adref: widget.advertisementref,
            completed: false,
          ));

      await widget.advertisementref!.update({
        ...createAdvertisementRecordData(
          statusVendor: 1,
          statusDeputy: 2,
        ),
        ...mapToFirestore(
          {
            'allotednewspapers': functions
                .returnfirsttwousers(widget.waitinglist2documents?.toList()),
          },
        ),
      });

      await widget.joblogic!.update({
        ...mapToFirestore(
          {
            'waitingquuelist': functions
                .returnfulllisremoving2(widget.waitinglist2documents?.toList()),
          },
        ),
      });
    });

    animationsMap.addAll({
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 780.0.ms,
            begin: const Offset(-95.0, 0.0),
            end: const Offset(70.0, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: const BoxDecoration(),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (!_model.isvisible)
                      Text(
                        'Allotted To :',
                        style:
                            FlutterFlowTheme.of(context).displayMedium.override(
                                  fontFamily: 'Spectral',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    if (!_model.isvisible)
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.5,
                        height: MediaQuery.sizeOf(context).height * 0.1,
                        decoration: const BoxDecoration(),
                        child: Builder(
                          builder: (context) {
                            final allotedlist = functions
                                    .returnfirsttwousers(
                                        widget.waitinglist2documents?.toList())
                                    ?.toList() ??
                                [];
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: allotedlist.length,
                              itemBuilder: (context, allotedlistIndex) {
                                final allotedlistItem =
                                    allotedlist[allotedlistIndex];
                                return StreamBuilder<UsersRecord>(
                                  stream:
                                      UsersRecord.getDocument(allotedlistItem),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    final textUsersRecord = snapshot.data!;
                                    return Text(
                                      valueOrDefault<String>(
                                        textUsersRecord.displayName,
                                        'ABC',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .displaySmall
                                          .override(
                                            fontFamily: 'Spectral',
                                            letterSpacing: 0.0,
                                          ),
                                    ).animateOnPageLoad(animationsMap[
                                        'textOnPageLoadAnimation']!);
                                  },
                                );
                              },
                            );
                          },
                        ),
                      ),
                    if (_model.isvisible)
                      Lottie.asset(
                        'assets/lottie_animations/Animation_-_1711953136908.json',
                        width: MediaQuery.sizeOf(context).width * 0.4,
                        height: MediaQuery.sizeOf(context).height * 0.7,
                        fit: BoxFit.cover,
                        animate: true,
                      ),
                    FlutterFlowTimer(
                      initialTime: _model.timerMilliseconds,
                      getDisplayTime: (value) => StopWatchTimer.getDisplayTime(
                        value,
                        hours: false,
                        minute: false,
                        milliSecond: false,
                      ),
                      controller: _model.timerController,
                      updateStateInterval: const Duration(milliseconds: 1000),
                      onChanged: (value, displayTime, shouldUpdate) {
                        _model.timerMilliseconds = value;
                        _model.timerValue = displayTime;
                        if (shouldUpdate) setState(() {});
                      },
                      onEnded: () async {
                        setState(() {
                          _model.isvisible = false;
                        });
                        await Future.delayed(
                            const Duration(milliseconds: 5000));

                        context.pushNamed('Deputy_dashboard');
                      },
                      textAlign: TextAlign.start,
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Spectral',
                                letterSpacing: 0.0,
                              ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
