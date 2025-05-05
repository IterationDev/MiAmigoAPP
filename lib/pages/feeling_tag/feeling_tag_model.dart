import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'feeling_tag_widget.dart' show FeelingTagWidget;
import 'package:flutter/material.dart';

class FeelingTagModel extends FlutterFlowModel<FeelingTagWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get gradeValue => gradeValueController?.value;
}
