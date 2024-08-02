import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'calendarpopup_model.dart';
export 'calendarpopup_model.dart';

class CalendarpopupWidget extends StatefulWidget {
  const CalendarpopupWidget({super.key});

  @override
  State<CalendarpopupWidget> createState() => _CalendarpopupWidgetState();
}

class _CalendarpopupWidgetState extends State<CalendarpopupWidget> {
  late CalendarpopupModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalendarpopupModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: FlutterFlowCalendar(
              color: FlutterFlowTheme.of(context).primary,
              iconColor: FlutterFlowTheme.of(context).secondaryText,
              weekFormat: false,
              weekStartsMonday: false,
              initialDate: getCurrentTimestamp,
              rowHeight: 64.0,
              onChange: (DateTimeRange? newSelectedDate) async {
                if (_model.calendarSelectedDay == newSelectedDate) {
                  return;
                }
                _model.calendarSelectedDay = newSelectedDate;
                setState(() {
                  FFAppState().selecteddates =
                      _model.calendarSelectedDay?.start;
                });
                setState(() {});
              },
              titleStyle: FlutterFlowTheme.of(context).headlineSmall.override(
                    fontFamily: 'Spectral',
                    letterSpacing: 0.0,
                  ),
              dayOfWeekStyle: FlutterFlowTheme.of(context).labelLarge.override(
                    fontFamily: 'Spectral',
                    letterSpacing: 0.0,
                  ),
              dateStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Spectral',
                    letterSpacing: 0.0,
                  ),
              selectedDateStyle:
                  FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Spectral',
                        letterSpacing: 0.0,
                      ),
              inactiveDateStyle:
                  FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Spectral',
                        letterSpacing: 0.0,
                      ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(1.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 50.0, 20.0),
              child: FFButtonWidget(
                onPressed: () async {
                  Navigator.pop(context);
                  _model.updatePage(() {
                    FFAppState().selecteddates =
                        _model.calendarSelectedDay?.start;
                  });
                },
                text: 'Select',
                options: FFButtonOptions(
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Spectral',
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                  elevation: 3.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
