import '/flutter_flow/flutter_flow_util.dart';
import 'charge_photo_widget.dart' show ChargePhotoWidget;
import 'package:flutter/material.dart';

class ChargePhotoModel extends FlutterFlowModel<ChargePhotoWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
