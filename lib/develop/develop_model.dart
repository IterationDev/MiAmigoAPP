import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'develop_widget.dart' show DevelopWidget;
import 'package:flutter/material.dart';

class DevelopModel extends FlutterFlowModel<DevelopWidget> {
  ///  Local state fields for this page.
  /// 19.415395453473053, -99.1748728145192
  LatLng? location;

  ///  State fields for stateful widgets in this page.

  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
