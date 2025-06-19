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
      length: 4,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

    animationsMap.addAll({
      'listViewOnPageLoadAnimation1': AnimationInfo(
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
      'listViewOnPageLoadAnimation2': AnimationInfo(
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
      'listViewOnPageLoadAnimation3': AnimationInfo(
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
      'listViewOnPageLoadAnimation4': AnimationInfo(
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
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 12.0, 8.0, 0.0),
                          child: TextFormField(
                            controller: _model.searchBarTextController,
                            focusNode: _model.searchBarFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.searchBarTextController',
                              Duration(milliseconds: 1000),
                              () async {
                                _model.filtro =
                                    _model.searchBarTextController.text;
                                safeSetState(() {});
                              },
                            ),
                            autofocus: true,
                            textCapitalization: TextCapitalization.characters,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: FFLocalizations.of(context).getText(
                                'ke3prtho' /* Qué sientes hoy... */,
                              ),
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
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
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
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
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 24.0, 20.0, 24.0),
                              suffixIcon: _model
                                      .searchBarTextController!.text.isNotEmpty
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
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 12.0, 12.0, 0.0),
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
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: StreamBuilder<
                                    List<SentimientosNegativosRecord>>(
                                  stream: querySentimientosNegativosRecord(
                                    queryBuilder:
                                        (sentimientosNegativosRecord) =>
                                            sentimientosNegativosRecord.where(
                                      'name',
                                      isGreaterThanOrEqualTo:
                                          _model.filtro != ''
                                              ? _model.filtro
                                              : null,
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
                                        listViewSentimientosNegativosRecordList =
                                        snapshot.data!;

                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      scrollDirection: Axis.vertical,
                                      itemCount:
                                          listViewSentimientosNegativosRecordList
                                              .length,
                                      itemBuilder: (context, listViewIndex) {
                                        final listViewSentimientosNegativosRecord =
                                            listViewSentimientosNegativosRecordList[
                                                listViewIndex];
                                        return wrapWithModel(
                                          model:
                                              _model.feelingTagModels1.getModel(
                                            listViewSentimientosNegativosRecord
                                                .reference.id,
                                            listViewIndex,
                                          ),
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: FeelingTagWidget(
                                            key: Key(
                                              'Keylgi_${listViewSentimientosNegativosRecord.reference.id}',
                                            ),
                                            img:
                                                listViewSentimientosNegativosRecord
                                                    .ilustracion,
                                            name:
                                                listViewSentimientosNegativosRecord
                                                    .name,
                                            n1: listViewSentimientosNegativosRecord
                                                .nivel1,
                                            n2: listViewSentimientosNegativosRecord
                                                .nivel2,
                                            n3: listViewSentimientosNegativosRecord
                                                .nivel3,
                                          ),
                                        );
                                      },
                                    ).animateOnPageLoad(animationsMap[
                                        'listViewOnPageLoadAnimation1']!);
                                  },
                                ),
                              ),
                              StreamBuilder<List<SentimientosPositivosRecord>>(
                                stream: querySentimientosPositivosRecord(
                                  queryBuilder: (sentimientosPositivosRecord) =>
                                      sentimientosPositivosRecord.where(
                                    'name',
                                    isGreaterThanOrEqualTo: _model.filtro != ''
                                        ? _model.filtro
                                        : null,
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
                                      listViewSentimientosPositivosRecordList =
                                      snapshot.data!;

                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewSentimientosPositivosRecordList
                                            .length,
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewSentimientosPositivosRecord =
                                          listViewSentimientosPositivosRecordList[
                                              listViewIndex];
                                      return wrapWithModel(
                                        model:
                                            _model.feelingTagModels2.getModel(
                                          listViewSentimientosPositivosRecord
                                              .reference.id,
                                          listViewIndex,
                                        ),
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: FeelingTagWidget(
                                          key: Key(
                                            'Key5zs_${listViewSentimientosPositivosRecord.reference.id}',
                                          ),
                                          img:
                                              listViewSentimientosPositivosRecord
                                                  .ilustracion,
                                          name:
                                              listViewSentimientosPositivosRecord
                                                  .name,
                                          n1: listViewSentimientosPositivosRecord
                                              .nivel1,
                                          n2: listViewSentimientosPositivosRecord
                                              .nivel2,
                                          n3: listViewSentimientosPositivosRecord
                                              .nivel3,
                                        ),
                                      );
                                    },
                                  ).animateOnPageLoad(animationsMap[
                                      'listViewOnPageLoadAnimation2']!);
                                },
                              ),
                              StreamBuilder<List<SentimientosNeutrosRecord>>(
                                stream: querySentimientosNeutrosRecord(
                                  queryBuilder: (sentimientosNeutrosRecord) =>
                                      sentimientosNeutrosRecord.where(
                                    'name',
                                    isGreaterThanOrEqualTo: _model.filtro != ''
                                        ? _model.filtro
                                        : null,
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
                                      listViewSentimientosNeutrosRecordList =
                                      snapshot.data!;

                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewSentimientosNeutrosRecordList
                                            .length,
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewSentimientosNeutrosRecord =
                                          listViewSentimientosNeutrosRecordList[
                                              listViewIndex];
                                      return wrapWithModel(
                                        model:
                                            _model.feelingTagModels3.getModel(
                                          listViewSentimientosNeutrosRecord
                                              .reference.id,
                                          listViewIndex,
                                        ),
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: FeelingTagWidget(
                                          key: Key(
                                            'Keyofu_${listViewSentimientosNeutrosRecord.reference.id}',
                                          ),
                                          img: listViewSentimientosNeutrosRecord
                                              .ilustracion,
                                          name:
                                              listViewSentimientosNeutrosRecord
                                                  .name,
                                          n1: listViewSentimientosNeutrosRecord
                                              .nivel1,
                                          n2: listViewSentimientosNeutrosRecord
                                              .nivel2,
                                          n3: listViewSentimientosNeutrosRecord
                                              .nivel3,
                                        ),
                                      );
                                    },
                                  ).animateOnPageLoad(animationsMap[
                                      'listViewOnPageLoadAnimation3']!);
                                },
                              ),
                              StreamBuilder<List<SintomasRecord>>(
                                stream: querySintomasRecord(
                                  queryBuilder: (sintomasRecord) =>
                                      sintomasRecord.where(
                                    'name',
                                    isGreaterThanOrEqualTo: _model.filtro != ''
                                        ? _model.filtro
                                        : null,
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
                                  List<SintomasRecord>
                                      listViewSintomasRecordList =
                                      snapshot.data!;

                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewSintomasRecordList.length,
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewSintomasRecord =
                                          listViewSintomasRecordList[
                                              listViewIndex];
                                      return wrapWithModel(
                                        model:
                                            _model.feelingTagModels4.getModel(
                                          listViewSintomasRecord.reference.id,
                                          listViewIndex,
                                        ),
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: FeelingTagWidget(
                                          key: Key(
                                            'Keyneq_${listViewSintomasRecord.reference.id}',
                                          ),
                                          img: listViewSintomasRecord
                                              .ilustracion,
                                          name: listViewSintomasRecord.name,
                                          n1: listViewSintomasRecord.nivel1,
                                          n2: listViewSintomasRecord.nivel2,
                                          n3: listViewSintomasRecord.nivel3,
                                        ),
                                      );
                                    },
                                  ).animateOnPageLoad(animationsMap[
                                      'listViewOnPageLoadAnimation4']!);
                                },
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment(-1.0, 0),
                          child: FlutterFlowButtonTabBar(
                            useToggleButtonStyle: false,
                            isScrollable: true,
                            labelStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
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
                            labelPadding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            buttonMargin: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 16.0, 0.0),
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            tabs: [
                              Tab(
                                text: FFLocalizations.of(context).getText(
                                  '9dnmi4oc' /* NEGATIVOS */,
                                ),
                              ),
                              Tab(
                                text: FFLocalizations.of(context).getText(
                                  '1eykvo4d' /* POSITIVOS */,
                                ),
                              ),
                              Tab(
                                text: FFLocalizations.of(context).getText(
                                  '90lqpw1s' /* NEUTROS */,
                                ),
                              ),
                              Tab(
                                text: FFLocalizations.of(context).getText(
                                  'i0yn56yl' /* SINTOMAS */,
                                ),
                              ),
                            ],
                            controller: _model.tabBarController,
                            onTap: (i) async {
                              [
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
            ],
          ),
        ),
      ),
    );
  }
}
