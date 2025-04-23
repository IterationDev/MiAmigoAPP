import '/flutter_flow/flutter_flow_util.dart';
import '/pages/fondo/fondo_widget.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Fondo component.
  late FondoModel fondoModel;

  @override
  void initState(BuildContext context) {
    fondoModel = createModel(context, () => FondoModel());
  }

  @override
  void dispose() {
    fondoModel.dispose();
  }
}
