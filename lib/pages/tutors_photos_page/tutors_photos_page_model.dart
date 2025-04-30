import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'tutors_photos_page_widget.dart' show TutorsPhotosPageWidget;
import 'package:flutter/material.dart';

class TutorsPhotosPageModel extends FlutterFlowModel<TutorsPhotosPageWidget> {
  ///  Local state fields for this page.

  String? photos;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
