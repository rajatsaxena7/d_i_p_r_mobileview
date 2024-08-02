import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'case_invoicereview_model.dart';
export 'case_invoicereview_model.dart';

class CaseInvoicereviewWidget extends StatefulWidget {
  const CaseInvoicereviewWidget({
    super.key,
    required this.docref,
  });

  final String? docref;

  @override
  State<CaseInvoicereviewWidget> createState() =>
      _CaseInvoicereviewWidgetState();
}

class _CaseInvoicereviewWidgetState extends State<CaseInvoicereviewWidget> {
  late CaseInvoicereviewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CaseInvoicereviewModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(50.0, 25.0, 50.0, 0.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: MediaQuery.sizeOf(context).height * 1.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          child: custom_widgets.SynfusionflutterPdf(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            pdfurl: widget.docref!,
          ),
        ),
      ),
    );
  }
}
