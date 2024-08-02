import '/backend/backend.dart';
import '/components/loadingindicator_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'review_invoice_model.dart';
export 'review_invoice_model.dart';

class ReviewInvoiceWidget extends StatefulWidget {
  const ReviewInvoiceWidget({
    super.key,
    required this.docref,
  });

  final DocumentReference? docref;

  @override
  State<ReviewInvoiceWidget> createState() => _ReviewInvoiceWidgetState();
}

class _ReviewInvoiceWidgetState extends State<ReviewInvoiceWidget> {
  late ReviewInvoiceModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReviewInvoiceModel());
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
      child: StreamBuilder<InvoiceRequestRecord>(
        stream: InvoiceRequestRecord.getDocument(widget.docref!),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return const Center(
              child: SizedBox(
                width: 200.0,
                height: 200.0,
                child: LoadingindicatorWidget(),
              ),
            );
          }
          final containerInvoiceRequestRecord = snapshot.data!;
          return Container(
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
                pdfurl: containerInvoiceRequestRecord.invoiceUrl,
              ),
            ),
          );
        },
      ),
    );
  }
}
