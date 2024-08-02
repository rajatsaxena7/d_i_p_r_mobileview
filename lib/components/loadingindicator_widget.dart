import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'loadingindicator_model.dart';
export 'loadingindicator_model.dart';

class LoadingindicatorWidget extends StatefulWidget {
  const LoadingindicatorWidget({super.key});

  @override
  State<LoadingindicatorWidget> createState() => _LoadingindicatorWidgetState();
}

class _LoadingindicatorWidgetState extends State<LoadingindicatorWidget> {
  late LoadingindicatorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadingindicatorModel());
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
      decoration: const BoxDecoration(
        color: Color(0x00FFFFFF),
      ),
      child: Lottie.asset(
        'assets/lottie_animations/Animation_-_1711639595475.json',
        width: 150.0,
        height: 130.0,
        fit: BoxFit.cover,
        animate: true,
      ),
    );
  }
}
