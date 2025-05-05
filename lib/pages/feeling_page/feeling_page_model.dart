import '/flutter_flow/flutter_flow_util.dart';
import '/pages/feeling_tag/feeling_tag_widget.dart';
import 'feeling_page_widget.dart' show FeelingPageWidget;
import 'package:flutter/material.dart';

class FeelingPageModel extends FlutterFlowModel<FeelingPageWidget> {
  ///  Local state fields for this page.

  String? filtro;

  ///  State fields for stateful widgets in this page.

  // State field(s) for searchBar widget.
  FocusNode? searchBarFocusNode;
  TextEditingController? searchBarTextController;
  String? Function(BuildContext, String?)? searchBarTextControllerValidator;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Models for feelingTag dynamic component.
  late FlutterFlowDynamicModels<FeelingTagModel> feelingTagModels1;
  // Models for feelingTag dynamic component.
  late FlutterFlowDynamicModels<FeelingTagModel> feelingTagModels2;
  // Models for feelingTag dynamic component.
  late FlutterFlowDynamicModels<FeelingTagModel> feelingTagModels3;

  @override
  void initState(BuildContext context) {
    feelingTagModels1 = FlutterFlowDynamicModels(() => FeelingTagModel());
    feelingTagModels2 = FlutterFlowDynamicModels(() => FeelingTagModel());
    feelingTagModels3 = FlutterFlowDynamicModels(() => FeelingTagModel());
  }

  @override
  void dispose() {
    searchBarFocusNode?.dispose();
    searchBarTextController?.dispose();

    tabBarController?.dispose();
    feelingTagModels1.dispose();
    feelingTagModels2.dispose();
    feelingTagModels3.dispose();
  }
}
