import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'user_page_widget.dart' show UserPageWidget;
import 'package:flutter/material.dart';

class UserPageModel extends FlutterFlowModel<UserPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for busqGame widget.
  FocusNode? busqGameFocusNode;
  TextEditingController? busqGameTextController;
  String? Function(BuildContext, String?)? busqGameTextControllerValidator;
  // State field(s) for busqCuent widget.
  FocusNode? busqCuentFocusNode;
  TextEditingController? busqCuentTextController;
  String? Function(BuildContext, String?)? busqCuentTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    busqGameFocusNode?.dispose();
    busqGameTextController?.dispose();

    busqCuentFocusNode?.dispose();
    busqCuentTextController?.dispose();
  }
}
