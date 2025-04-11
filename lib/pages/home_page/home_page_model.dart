import '/flutter_flow/flutter_flow_util.dart';
import '/pages/fondo/fondo_widget.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Fondo component.
  late FondoModel fondoModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;

  @override
  void initState(BuildContext context) {
    fondoModel = createModel(context, () => FondoModel());
  }

  @override
  void dispose() {
    fondoModel.dispose();
  }
}
