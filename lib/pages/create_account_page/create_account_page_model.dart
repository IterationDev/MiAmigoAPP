import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'create_account_page_widget.dart' show CreateAccountPageWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CreateAccountPageModel extends FlutterFlowModel<CreateAccountPageWidget> {
  ///  Local state fields for this page.

  String? photos;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for name widget.
  FocusNode? nameFocusNode1;
  TextEditingController? nameTextController1;
  String? Function(BuildContext, String?)? nameTextController1Validator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode1;
  TextEditingController? emailTextController1;
  String? Function(BuildContext, String?)? emailTextController1Validator;
  // State field(s) for phoneNum widget.
  FocusNode? phoneNumFocusNode;
  TextEditingController? phoneNumTextController;
  String? Function(BuildContext, String?)? phoneNumTextControllerValidator;
  // State field(s) for birdthDay widget.
  FocusNode? birdthDayFocusNode1;
  TextEditingController? birdthDayTextController1;
  final birdthDayMask1 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? birdthDayTextController1Validator;
  // State field(s) for cont1 widget.
  FocusNode? cont1FocusNode;
  TextEditingController? cont1TextController;
  String? Function(BuildContext, String?)? cont1TextControllerValidator;
  // State field(s) for phone1 widget.
  FocusNode? phone1FocusNode;
  TextEditingController? phone1TextController;
  final phone1Mask = MaskTextInputFormatter(mask: '##-##-##-##-##');
  String? Function(BuildContext, String?)? phone1TextControllerValidator;
  // State field(s) for cont2 widget.
  FocusNode? cont2FocusNode;
  TextEditingController? cont2TextController;
  String? Function(BuildContext, String?)? cont2TextControllerValidator;
  // State field(s) for phone2 widget.
  FocusNode? phone2FocusNode;
  TextEditingController? phone2TextController;
  final phone2Mask = MaskTextInputFormatter(mask: '##-##-##-##-##');
  String? Function(BuildContext, String?)? phone2TextControllerValidator;
  // State field(s) for catDiscap widget.
  String? catDiscapValue;
  FormFieldController<String>? catDiscapValueController;
  // State field(s) for tipDiscap widget.
  String? tipDiscapValue;
  FormFieldController<String>? tipDiscapValueController;
  // Stores action output result for [Backend Call - Create Document] action in confirm widget.
  ContacsRecord? userCreated;
  // State field(s) for name widget.
  FocusNode? nameFocusNode2;
  TextEditingController? nameTextController2;
  String? Function(BuildContext, String?)? nameTextController2Validator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode2;
  TextEditingController? emailTextController2;
  String? Function(BuildContext, String?)? emailTextController2Validator;
  // State field(s) for birdthDay widget.
  FocusNode? birdthDayFocusNode2;
  TextEditingController? birdthDayTextController2;
  final birdthDayMask2 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? birdthDayTextController2Validator;
  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  final phoneMask = MaskTextInputFormatter(mask: '##-##-##-##-##');
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for rePassword widget.
  FocusNode? rePasswordFocusNode;
  TextEditingController? rePasswordTextController;
  late bool rePasswordVisibility;
  String? Function(BuildContext, String?)? rePasswordTextControllerValidator;
  // State field(s) for cargo widget.
  List<String>? cargoValue;
  FormFieldController<List<String>>? cargoValueController;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    rePasswordVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    nameFocusNode1?.dispose();
    nameTextController1?.dispose();

    emailFocusNode1?.dispose();
    emailTextController1?.dispose();

    phoneNumFocusNode?.dispose();
    phoneNumTextController?.dispose();

    birdthDayFocusNode1?.dispose();
    birdthDayTextController1?.dispose();

    cont1FocusNode?.dispose();
    cont1TextController?.dispose();

    phone1FocusNode?.dispose();
    phone1TextController?.dispose();

    cont2FocusNode?.dispose();
    cont2TextController?.dispose();

    phone2FocusNode?.dispose();
    phone2TextController?.dispose();

    nameFocusNode2?.dispose();
    nameTextController2?.dispose();

    emailFocusNode2?.dispose();
    emailTextController2?.dispose();

    birdthDayFocusNode2?.dispose();
    birdthDayTextController2?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    rePasswordFocusNode?.dispose();
    rePasswordTextController?.dispose();
  }
}
