import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_mi_amigo_widget.dart' show AddMiAmigoWidget;
import 'package:flutter/material.dart';

class AddMiAmigoModel extends FlutterFlowModel<AddMiAmigoWidget> {
  ///  Local state fields for this page.

  int? count;

  ///  State fields for stateful widgets in this page.

  // State field(s) for cargo widget.
  String? cargoValue;
  FormFieldController<String>? cargoValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in cargo widget.
  UsersAuthRecord? userAsignated;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
