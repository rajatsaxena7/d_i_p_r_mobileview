import '/backend/backend.dart';
import '/components/loadingindicator_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'deputy_selectnewspaper_model.dart';
export 'deputy_selectnewspaper_model.dart';

class DeputySelectnewspaperWidget extends StatefulWidget {
  const DeputySelectnewspaperWidget({
    super.key,
    required this.advref,
  });

  final DocumentReference? advref;

  @override
  State<DeputySelectnewspaperWidget> createState() =>
      _DeputySelectnewspaperWidgetState();
}

class _DeputySelectnewspaperWidgetState
    extends State<DeputySelectnewspaperWidget> {
  late DeputySelectnewspaperModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeputySelectnewspaperModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<AdvertisementRecord>(
      stream: AdvertisementRecord.getDocument(widget.advref!),
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
        final containerAdvertisementRecord = snapshot.data!;
        return Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(16.0),
          ),
        );
      },
    );
  }
}
