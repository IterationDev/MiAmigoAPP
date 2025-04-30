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
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for phoneNum widget.
  FocusNode? phoneNumFocusNode;
  TextEditingController? phoneNumTextController;
  final phoneNumMask = MaskTextInputFormatter(mask: '##-##-##-##-##');
  String? Function(BuildContext, String?)? phoneNumTextControllerValidator;
  // State field(s) for birdthDay widget.
  FocusNode? birdthDayFocusNode;
  TextEditingController? birdthDayTextController;
  final birdthDayMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? birdthDayTextControllerValidator;
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
  // State field(s) for tipDiscap1 widget.
  String? tipDiscap1Value;
  FormFieldController<String>? tipDiscap1ValueController;
  // State field(s) for tipDiscap2 widget.
  String? tipDiscap2Value;
  FormFieldController<String>? tipDiscap2ValueController;
  // State field(s) for tipDiscap3 widget.
  String? tipDiscap3Value;
  FormFieldController<String>? tipDiscap3ValueController;
  // State field(s) for tipDiscap4 widget.
  String? tipDiscap4Value;
  FormFieldController<String>? tipDiscap4ValueController;
  // Stores action output result for [Backend Call - Create Document] action in confirmUser widget.
  UsersAuthRecord? userCreated;
  // State field(s) for nameTutor widget.
  FocusNode? nameTutorFocusNode;
  TextEditingController? nameTutorTextController;
  String? Function(BuildContext, String?)? nameTutorTextControllerValidator;
  // State field(s) for emailTutor widget.
  FocusNode? emailTutorFocusNode;
  TextEditingController? emailTutorTextController;
  String? Function(BuildContext, String?)? emailTutorTextControllerValidator;
  // State field(s) for birdthDayTutor widget.
  FocusNode? birdthDayTutorFocusNode;
  TextEditingController? birdthDayTutorTextController;
  final birdthDayTutorMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      birdthDayTutorTextControllerValidator;
  // State field(s) for phoneTutor widget.
  FocusNode? phoneTutorFocusNode;
  TextEditingController? phoneTutorTextController;
  final phoneTutorMask = MaskTextInputFormatter(mask: '##-##-##-##-##');
  String? Function(BuildContext, String?)? phoneTutorTextControllerValidator;
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
  // Stores action output result for [Backend Call - Create Document] action in confirmTutor widget.
  TutorsAuthRecord? tutorCreated;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    rePasswordVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    phoneNumFocusNode?.dispose();
    phoneNumTextController?.dispose();

    birdthDayFocusNode?.dispose();
    birdthDayTextController?.dispose();

    cont1FocusNode?.dispose();
    cont1TextController?.dispose();

    phone1FocusNode?.dispose();
    phone1TextController?.dispose();

    cont2FocusNode?.dispose();
    cont2TextController?.dispose();

    phone2FocusNode?.dispose();
    phone2TextController?.dispose();

    nameTutorFocusNode?.dispose();
    nameTutorTextController?.dispose();

    emailTutorFocusNode?.dispose();
    emailTutorTextController?.dispose();

    birdthDayTutorFocusNode?.dispose();
    birdthDayTutorTextController?.dispose();

    phoneTutorFocusNode?.dispose();
    phoneTutorTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    rePasswordFocusNode?.dispose();
    rePasswordTextController?.dispose();
  }
}
