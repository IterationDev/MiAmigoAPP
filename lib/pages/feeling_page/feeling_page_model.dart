import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'feeling_page_widget.dart' show FeelingPageWidget;
import 'package:flutter/material.dart';

class FeelingPageModel extends FlutterFlowModel<FeelingPageWidget> {
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

  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController1;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController2;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController3;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController4;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController5;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController6;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController7;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController8;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController9;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController10;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController11;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController12;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController13;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController14;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController15;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController16;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController17;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController18;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController19;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController20;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController21;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController22;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController23;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController24;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController25;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController26;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController27;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController28;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController29;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController30;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController31;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController32;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController33;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController34;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController35;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController36;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController37;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController38;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController39;
  // State field(s) for grade widget.
  FormFieldController<String>? gradeValueController40;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchBarFocusNode?.dispose();
    searchBarTextController?.dispose();

    tabBarController?.dispose();
  }

  /// Additional helper methods.
  String? get gradeValue1 => gradeValueController1?.value;
  String? get gradeValue2 => gradeValueController2?.value;
  String? get gradeValue3 => gradeValueController3?.value;
  String? get gradeValue4 => gradeValueController4?.value;
  String? get gradeValue5 => gradeValueController5?.value;
  String? get gradeValue6 => gradeValueController6?.value;
  String? get gradeValue7 => gradeValueController7?.value;
  String? get gradeValue8 => gradeValueController8?.value;
  String? get gradeValue9 => gradeValueController9?.value;
  String? get gradeValue10 => gradeValueController10?.value;
  String? get gradeValue11 => gradeValueController11?.value;
  String? get gradeValue12 => gradeValueController12?.value;
  String? get gradeValue13 => gradeValueController13?.value;
  String? get gradeValue14 => gradeValueController14?.value;
  String? get gradeValue15 => gradeValueController15?.value;
  String? get gradeValue16 => gradeValueController16?.value;
  String? get gradeValue17 => gradeValueController17?.value;
  String? get gradeValue18 => gradeValueController18?.value;
  String? get gradeValue19 => gradeValueController19?.value;
  String? get gradeValue20 => gradeValueController20?.value;
  String? get gradeValue21 => gradeValueController21?.value;
  String? get gradeValue22 => gradeValueController22?.value;
  String? get gradeValue23 => gradeValueController23?.value;
  String? get gradeValue24 => gradeValueController24?.value;
  String? get gradeValue25 => gradeValueController25?.value;
  String? get gradeValue26 => gradeValueController26?.value;
  String? get gradeValue27 => gradeValueController27?.value;
  String? get gradeValue28 => gradeValueController28?.value;
  String? get gradeValue29 => gradeValueController29?.value;
  String? get gradeValue30 => gradeValueController30?.value;
  String? get gradeValue31 => gradeValueController31?.value;
  String? get gradeValue32 => gradeValueController32?.value;
  String? get gradeValue33 => gradeValueController33?.value;
  String? get gradeValue34 => gradeValueController34?.value;
  String? get gradeValue35 => gradeValueController35?.value;
  String? get gradeValue36 => gradeValueController36?.value;
  String? get gradeValue37 => gradeValueController37?.value;
  String? get gradeValue38 => gradeValueController38?.value;
  String? get gradeValue39 => gradeValueController39?.value;
  String? get gradeValue40 => gradeValueController40?.value;
}
