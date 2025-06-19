import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'user_photos_page_widget.dart' show UserPhotosPageWidget;
import 'package:flutter/material.dart';

class UserPhotosPageModel extends FlutterFlowModel<UserPhotosPageWidget> {
  ///  Local state fields for this page.

  String? photos;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadData1 = false;
  FFUploadedFile uploadedLocalFile_uploadData1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadData1 = '';

  bool isDataUploading_uploadData2 = false;
  FFUploadedFile uploadedLocalFile_uploadData2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadData2 = '';

  bool isDataUploading_uploadData3 = false;
  FFUploadedFile uploadedLocalFile_uploadData3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadData3 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
