import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
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

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
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
  // State field(s) for cont3 widget.
  FocusNode? cont3FocusNode;
  TextEditingController? cont3TextController;
  String? Function(BuildContext, String?)? cont3TextControllerValidator;
  // State field(s) for phone3 widget.
  FocusNode? phone3FocusNode;
  TextEditingController? phone3TextController;
  final phone3Mask = MaskTextInputFormatter(mask: '##-##-##-##-##');
  String? Function(BuildContext, String?)? phone3TextControllerValidator;
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
  // State field(s) for catDiscap widget.
  String? catDiscapValue;
  FormFieldController<String>? catDiscapValueController;

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

    cont3FocusNode?.dispose();
    cont3TextController?.dispose();

    phone3FocusNode?.dispose();
    phone3TextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    rePasswordFocusNode?.dispose();
    rePasswordTextController?.dispose();
  }
}
