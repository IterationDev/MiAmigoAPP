import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/feeling_tag/feeling_tag_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'feeling_page_model.dart';
export 'feeling_page_model.dart';

/// Al 04/5 se cuenta con los elementos de interfaz necesarios, hace falta
/// agregar los sitomas y la categoria de todos ademas del texto a voz para
/// busqueda.
class FeelingPageWidget extends StatefulWidget {
  const FeelingPageWidget({super.key});

  static String routeName = 'FeelingPage';
  static String routePath = '/feelingPage';

  @override
  State<FeelingPageWidget> createState() => _FeelingPageWidgetState();
}

class _FeelingPageWidgetState extends State<FeelingPageWidget>
    with TickerProviderStateMixin {
  late FeelingPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FeelingPageModel());

    _model.searchBarTextController ??= TextEditingController();
    _model.searchBarFocusNode ??= FocusNode();

    _model.tabBarController = TabController(
      vsync: this,
      length: 5,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

    animationsMap.addAll({
      'columnOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFF7AA5BF),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 8.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            fillColor: Color(0xFF4B7BA6),
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).info,
              size: 30.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'nz5f1c4x' /* ¿HOY ME SIENTO? */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.poppins(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).info,
                  fontSize: 24.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 8.0, 0.0),
                      child: TextFormField(
                        controller: _model.searchBarTextController,
                        focusNode: _model.searchBarFocusNode,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.searchBarTextController',
                          Duration(milliseconds: 1000),
                          () async {
                            _model.filtro = _model.searchBarTextController.text;
                            safeSetState(() {});
                          },
                        ),
                        autofocus: true,
                        textCapitalization: TextCapitalization.characters,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: FFLocalizations.of(context).getText(
                            'foq2u8xx' /* Qué sientes hoy... */,
                          ),
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    font: GoogleFonts.roboto(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    font: GoogleFonts.roboto(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 24.0, 20.0, 24.0),
                          suffixIcon:
                              _model.searchBarTextController!.text.isNotEmpty
                                  ? InkWell(
                                      onTap: () async {
                                        _model.searchBarTextController?.clear();
                                        _model.filtro =
                                            _model.searchBarTextController.text;
                                        safeSetState(() {});
                                        safeSetState(() {});
                                      },
                                      child: Icon(
                                        Icons.clear,
                                        color: Color(0xFF757575),
                                        size: 22.0,
                                      ),
                                    )
                                  : null,
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
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                        validator: _model.searchBarTextControllerValidator
                            .asValidator(context),
                        inputFormatters: [
                          if (!isAndroid && !isiOS)
                            TextInputFormatter.withFunction(
                                (oldValue, newValue) {
                              return TextEditingValue(
                                selection: newValue.selection,
                                text: newValue.text.toCapitalization(
                                    TextCapitalization.characters),
                              );
                            }),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 12.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 50.0,
                      hoverIconColor: FlutterFlowTheme.of(context).accent2,
                      icon: Icon(
                        Icons.record_voice_over_rounded,
                        color: FlutterFlowTheme.of(context).common2,
                        size: 30.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: TabBarView(
                        controller: _model.tabBarController,
                        children: [
                          Container(),
                          StreamBuilder<List<SentimientosNegativosRecord>>(
                            stream: querySentimientosNegativosRecord(
                              queryBuilder: (sentimientosNegativosRecord) =>
                                  sentimientosNegativosRecord.where(
                                'name',
                                isEqualTo:
                                    _model.filtro != '' ? _model.filtro : null,
                              ),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 60.0,
                                    height: 60.0,
                                    child: SpinKitPumpingHeart(
                                      color: Color(0xFFA0C3D9),
                                      size: 60.0,
                                    ),
                                  ),
                                );
                              }
                              List<SentimientosNegativosRecord>
                                  columnSentimientosNegativosRecordList =
                                  snapshot.data!;

                              return SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      columnSentimientosNegativosRecordList
                                          .length, (columnIndex) {
                                    final columnSentimientosNegativosRecord =
                                        columnSentimientosNegativosRecordList[
                                            columnIndex];
                                    return wrapWithModel(
                                      model: _model.feelingTagModels1.getModel(
                                        columnSentimientosNegativosRecord
                                            .reference.id,
                                        columnIndex,
                                      ),
                                      updateCallback: () => safeSetState(() {}),
                                      child: FeelingTagWidget(
                                        key: Key(
                                          'Keylgi_${columnSentimientosNegativosRecord.reference.id}',
                                        ),
                                        img: columnSentimientosNegativosRecord
                                            .ilustracion,
                                        name: columnSentimientosNegativosRecord
                                            .name,
                                        n1: columnSentimientosNegativosRecord
                                            .nivel1,
                                        n2: columnSentimientosNegativosRecord
                                            .nivel2,
                                        n3: columnSentimientosNegativosRecord
                                            .nivel3,
                                      ),
                                    );
                                  }),
                                ),
                              ).animateOnPageLoad(
                                  animationsMap['columnOnPageLoadAnimation1']!);
                            },
                          ),
                          StreamBuilder<List<SentimientosPositivosRecord>>(
                            stream: querySentimientosPositivosRecord(
                              queryBuilder: (sentimientosPositivosRecord) =>
                                  sentimientosPositivosRecord.where(
                                'name',
                                isEqualTo:
                                    _model.filtro != '' ? _model.filtro : null,
                              ),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 60.0,
                                    height: 60.0,
                                    child: SpinKitPumpingHeart(
                                      color: Color(0xFFA0C3D9),
                                      size: 60.0,
                                    ),
                                  ),
                                );
                              }
                              List<SentimientosPositivosRecord>
                                  columnSentimientosPositivosRecordList =
                                  snapshot.data!;

                              return SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      columnSentimientosPositivosRecordList
                                          .length, (columnIndex) {
                                    final columnSentimientosPositivosRecord =
                                        columnSentimientosPositivosRecordList[
                                            columnIndex];
                                    return wrapWithModel(
                                      model: _model.feelingTagModels2.getModel(
                                        columnSentimientosPositivosRecord
                                            .reference.id,
                                        columnIndex,
                                      ),
                                      updateCallback: () => safeSetState(() {}),
                                      child: FeelingTagWidget(
                                        key: Key(
                                          'Key5zs_${columnSentimientosPositivosRecord.reference.id}',
                                        ),
                                        img: columnSentimientosPositivosRecord
                                            .ilustracion,
                                        name: columnSentimientosPositivosRecord
                                            .name,
                                        n1: columnSentimientosPositivosRecord
                                            .nivel1,
                                        n2: columnSentimientosPositivosRecord
                                            .nivel2,
                                        n3: columnSentimientosPositivosRecord
                                            .nivel3,
                                      ),
                                    );
                                  }),
                                ),
                              ).animateOnPageLoad(
                                  animationsMap['columnOnPageLoadAnimation2']!);
                            },
                          ),
                          StreamBuilder<List<SentimientosNeutrosRecord>>(
                            stream: querySentimientosNeutrosRecord(
                              queryBuilder: (sentimientosNeutrosRecord) =>
                                  sentimientosNeutrosRecord.where(
                                'name',
                                isEqualTo:
                                    _model.filtro != '' ? _model.filtro : null,
                              ),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 60.0,
                                    height: 60.0,
                                    child: SpinKitPumpingHeart(
                                      color: Color(0xFFA0C3D9),
                                      size: 60.0,
                                    ),
                                  ),
                                );
                              }
                              List<SentimientosNeutrosRecord>
                                  columnSentimientosNeutrosRecordList =
                                  snapshot.data!;

                              return SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      columnSentimientosNeutrosRecordList
                                          .length, (columnIndex) {
                                    final columnSentimientosNeutrosRecord =
                                        columnSentimientosNeutrosRecordList[
                                            columnIndex];
                                    return wrapWithModel(
                                      model: _model.feelingTagModels3.getModel(
                                        columnSentimientosNeutrosRecord
                                            .reference.id,
                                        columnIndex,
                                      ),
                                      updateCallback: () => safeSetState(() {}),
                                      child: FeelingTagWidget(
                                        key: Key(
                                          'Keyofu_${columnSentimientosNeutrosRecord.reference.id}',
                                        ),
                                        img: columnSentimientosNeutrosRecord
                                            .ilustracion,
                                        name: columnSentimientosNeutrosRecord
                                            .name,
                                        n1: columnSentimientosNeutrosRecord
                                            .nivel1,
                                        n2: columnSentimientosNeutrosRecord
                                            .nivel2,
                                        n3: columnSentimientosNeutrosRecord
                                            .nivel3,
                                      ),
                                    );
                                  }),
                                ),
                              ).animateOnPageLoad(
                                  animationsMap['columnOnPageLoadAnimation3']!);
                            },
                          ),
                          Container(),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment(-1.0, 0),
                      child: FlutterFlowButtonTabBar(
                        useToggleButtonStyle: false,
                        isScrollable: true,
                        labelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 15.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                        unselectedLabelStyle: TextStyle(),
                        labelColor: Colors.white,
                        unselectedLabelColor: Color(0xFF7AA5BF),
                        backgroundColor: Color(0xFF7AA5BF),
                        borderColor: Color(0xFF7AA5BF),
                        borderWidth: 1.0,
                        borderRadius: 12.0,
                        elevation: 0.0,
                        labelPadding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        buttonMargin: EdgeInsetsDirectional.fromSTEB(
                            0.0, 12.0, 16.0, 0.0),
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        tabs: [
                          Tab(
                            text: FFLocalizations.of(context).getText(
                              'iglowpea' /* TODOS */,
                            ),
                          ),
                          Tab(
                            text: FFLocalizations.of(context).getText(
                              'oa1js6u6' /* NEGATIVOS */,
                            ),
                          ),
                          Tab(
                            text: FFLocalizations.of(context).getText(
                              '03rozgll' /* POSITIVOS */,
                            ),
                          ),
                          Tab(
                            text: FFLocalizations.of(context).getText(
                              'ialqpj8e' /* NEUTROS */,
                            ),
                          ),
                          Tab(
                            text: FFLocalizations.of(context).getText(
                              'qbzu6q9t' /* SINTOMAS */,
                            ),
                          ),
                        ],
                        controller: _model.tabBarController,
                        onTap: (i) async {
                          [
                            () async {},
                            () async {},
                            () async {},
                            () async {},
                            () async {}
                          ][i]();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
