import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_tutorial_page_widget.dart' show AddTutorialPageWidget;
import 'package:flutter/material.dart';

class AddTutorialPageModel extends FlutterFlowModel<AddTutorialPageWidget> {
  ///  Local state fields for this page.

  String urlState = 'null';

  ///  State fields for stateful widgets in this page.

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for tutori widget.
  FocusNode? tutoriFocusNode;
  TextEditingController? tutoriTextController;
  String? Function(BuildContext, String?)? tutoriTextControllerValidator;
  bool isDataUploading_uploadDataZmt = false;
  FFUploadedFile uploadedLocalFile_uploadDataZmt =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataZmt = '';

  // Stores action output result for [Backend Call - Create Document] action in add widget.
  TutorialsRecord? tutorialCreate;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    tutoriFocusNode?.dispose();
    tutoriTextController?.dispose();
  }
}
