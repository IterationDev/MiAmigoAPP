import '/flutter_flow/flutter_flow_util.dart';
import '/pages/fondo/fondo_widget.dart';
import '/pages/tutor_tag/tutor_tag_widget.dart';
import '/pages/users_tag/users_tag_widget.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Fondo component.
  late FondoModel fondoModel;
  // Models for UsersTag dynamic component.
  late FlutterFlowDynamicModels<UsersTagModel> usersTagModels;
  // Models for TutorTag dynamic component.
  late FlutterFlowDynamicModels<TutorTagModel> tutorTagModels;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;

  @override
  void initState(BuildContext context) {
    fondoModel = createModel(context, () => FondoModel());
    usersTagModels = FlutterFlowDynamicModels(() => UsersTagModel());
    tutorTagModels = FlutterFlowDynamicModels(() => TutorTagModel());
  }

  @override
  void dispose() {
    fondoModel.dispose();
    usersTagModels.dispose();
    tutorTagModels.dispose();
  }
}
