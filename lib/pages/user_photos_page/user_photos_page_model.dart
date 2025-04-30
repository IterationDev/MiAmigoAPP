import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'user_photos_page_widget.dart' show UserPhotosPageWidget;
import 'package:flutter/material.dart';

class UserPhotosPageModel extends FlutterFlowModel<UserPhotosPageWidget> {
  ///  Local state fields for this page.

  String? photos;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl3 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
