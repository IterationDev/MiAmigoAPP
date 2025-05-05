import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'tutor_page_widget.dart' show TutorPageWidget;
import 'package:flutter/material.dart';

class TutorPageModel extends FlutterFlowModel<TutorPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for busqGame widget.
  FocusNode? busqGameFocusNode;
  TextEditingController? busqGameTextController;
  String? Function(BuildContext, String?)? busqGameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    busqGameFocusNode?.dispose();
    busqGameTextController?.dispose();
  }
}
