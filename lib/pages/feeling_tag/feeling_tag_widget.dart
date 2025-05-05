import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'feeling_tag_model.dart';
export 'feeling_tag_model.dart';

class FeelingTagWidget extends StatefulWidget {
  const FeelingTagWidget({
    super.key,
    required this.img,
    required this.name,
    required this.n1,
    required this.n2,
    required this.n3,
  });

  final String? img;
  final String? name;
  final String? n1;
  final String? n2;
  final String? n3;

  @override
  State<FeelingTagWidget> createState() => _FeelingTagWidgetState();
}

class _FeelingTagWidgetState extends State<FeelingTagWidget> {
  late FeelingTagModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FeelingTagModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 12.0, 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  valueOrDefault<String>(
                    widget.img,
                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/mi-amigo-v1-e5ixbf/assets/ga247wttk5h8/planet.png',
                  ),
                  width: 70.0,
                  height: 70.0,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SelectionArea(
                          child: Text(
                        valueOrDefault<String>(
                          widget.name,
                          'No Data',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.poppins(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      )),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'd8her9kf' /* Indica que tanto: */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.roboto(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowRadioButton(
                        options: [
                          FFLocalizations.of(context).getText(
                            'shpmgmiy' /* LEVE */,
                          ),
                          FFLocalizations.of(context).getText(
                            '60575gqc' /* MEDIO */,
                          ),
                          FFLocalizations.of(context).getText(
                            'snzzi35l' /* FUERTE */,
                          )
                        ].toList(),
                        onChanged: (val) async {
                          safeSetState(() {});
                          safeSetState(() {});
                        },
                        controller: _model.gradeValueController ??=
                            FormFieldController<String>(
                                FFLocalizations.of(context).getText(
                          'v6oy1bnc' /* MEDIO */,
                        )),
                        optionHeight: 30.0,
                        textStyle: GoogleFonts.poppins(
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontWeight: FontWeight.w500,
                          fontSize: 11.0,
                        ),
                        selectedTextStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w800,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w800,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                        buttonPosition: RadioButtonPosition.left,
                        direction: Axis.horizontal,
                        radioButtonColor: Color(0xFF4B7BA6),
                        inactiveRadioButtonColor:
                            FlutterFlowTheme.of(context).secondaryText,
                        toggleable: false,
                        horizontalAlignment: WrapAlignment.start,
                        verticalAlignment: WrapCrossAlignment.start,
                      ),
                    ],
                  ),
                ],
              ),
              Flexible(
                child: Align(
                  alignment: AlignmentDirectional(1.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      if (_model.gradeValue == 'LEVE') {
                        await actions.textToVoice(
                          widget.n1,
                          '',
                        );
                        safeSetState(() {
                          _model.gradeValueController?.reset();
                        });
                      } else {
                        if (_model.gradeValue == 'MEDIO') {
                          await actions.textToVoice(
                            widget.n2,
                            '',
                          );
                          safeSetState(() {
                            _model.gradeValueController?.reset();
                          });
                        } else {
                          if (_model.gradeValue == 'FUERTE') {
                            await actions.textToVoice(
                              widget.n3,
                              '',
                            );
                            safeSetState(() {
                              _model.gradeValueController?.reset();
                            });
                          } else {
                            return;
                          }

                          return;
                        }

                        return;
                      }
                    },
                    text: FFLocalizations.of(context).getText(
                      'jdleddyq' /*  */,
                    ),
                    icon: Icon(
                      Icons.volume_up,
                      size: 25.0,
                    ),
                    options: FFButtonOptions(
                      width: 50.0,
                      height: 60.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                      iconAlignment: IconAlignment.start,
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFF7AA5BF),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                font: GoogleFonts.poppins(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                                color: Colors.white,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                      elevation: 2.0,
                      borderRadius: BorderRadius.circular(24.0),
                      hoverColor: Colors.white,
                      hoverTextColor: Color(0xFF7AA5BF),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
