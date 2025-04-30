import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/fondo/fondo_widget.dart';
import '/pages/tutor_tag/tutor_tag_widget.dart';
import '/pages/users_tag/users_tag_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

/// Al 29/4 se cuenta con lo necesario en interfaz, a expensas de
/// modificaciones
class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Wrap(
            spacing: 0.0,
            runSpacing: 0.0,
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            direction: Axis.horizontal,
            runAlignment: WrapAlignment.start,
            verticalDirection: VerticalDirection.down,
            clipBehavior: Clip.none,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFBDDEF2), Color(0xFF4B7BA6)],
                      stops: [0.0, 1.0],
                      begin: AlignmentDirectional(0.0, -1.0),
                      end: AlignmentDirectional(0, 1.0),
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: 0.2,
                        child: wrapWithModel(
                          model: _model.fondoModel,
                          updateCallback: () => safeSetState(() {}),
                          child: FondoWidget(),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 15.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'kz4zu1hh' /* INGRESA 
CON UN TOQUE */
                                  ,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w800,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Color(0xFF99BF9C),
                                  fontSize: 40.0,
                                  letterSpacing: 1.0,
                                  fontWeight: FontWeight.w800,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                  shadows: [
                                    Shadow(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      offset: Offset(1.0, 6.0),
                                      blurRadius: 2.0,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 30.0, 16.0, 0.0),
                            child: Container(
                              height: 210.0,
                              decoration: BoxDecoration(),
                              child: StreamBuilder<List<UsersAuthRecord>>(
                                stream: FFAppState().users(
                                  uniqueQueryKey: currentUserEmail,
                                  requestFn: () => queryUsersAuthRecord(),
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
                                  List<UsersAuthRecord>
                                      gridViewUsersAuthRecordList =
                                      snapshot.data!;

                                  return GridView.builder(
                                    padding: EdgeInsets.fromLTRB(
                                      80.0,
                                      0,
                                      0,
                                      0,
                                    ),
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 1,
                                      mainAxisSpacing: 2.0,
                                      childAspectRatio: 1.0,
                                    ),
                                    scrollDirection: Axis.horizontal,
                                    itemCount:
                                        gridViewUsersAuthRecordList.length,
                                    itemBuilder: (context, gridViewIndex) {
                                      final gridViewUsersAuthRecord =
                                          gridViewUsersAuthRecordList[
                                              gridViewIndex];
                                      return StreamBuilder<
                                          List<UsersAuthRecord>>(
                                        stream: queryUsersAuthRecord(),
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
                                          List<UsersAuthRecord>
                                              usersTagUsersAuthRecordList =
                                              snapshot.data!;

                                          return wrapWithModel(
                                            model:
                                                _model.usersTagModels.getModel(
                                              gridViewUsersAuthRecord
                                                  .reference.id,
                                              gridViewIndex,
                                            ),
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: UsersTagWidget(
                                              key: Key(
                                                'Key6a2_${gridViewUsersAuthRecord.reference.id}',
                                              ),
                                              img: valueOrDefault<String>(
                                                gridViewUsersAuthRecord
                                                    .photoUrl,
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/mi-amigo-v1-e5ixbf/assets/m4bakgiqppj6/userDefault.svg',
                                              ),
                                              refSesionUser:
                                                  gridViewUsersAuthRecord
                                                      .reference,
                                              name: gridViewUsersAuthRecord
                                                  .displayName,
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 30.0, 16.0, 0.0),
                            child: Container(
                              height: 210.0,
                              decoration: BoxDecoration(),
                              child: StreamBuilder<List<TutorsAuthRecord>>(
                                stream: FFAppState().tutors(
                                  uniqueQueryKey: currentUserUid,
                                  requestFn: () => queryTutorsAuthRecord(),
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
                                  List<TutorsAuthRecord>
                                      gridViewTutorsAuthRecordList =
                                      snapshot.data!;
                                  if (gridViewTutorsAuthRecordList.isEmpty) {
                                    return Image.asset(
                                      'assets/images/planet.png',
                                    );
                                  }

                                  return GridView.builder(
                                    padding: EdgeInsets.fromLTRB(
                                      80.0,
                                      0,
                                      0,
                                      0,
                                    ),
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 1,
                                      mainAxisSpacing: 2.0,
                                      childAspectRatio: 1.0,
                                    ),
                                    scrollDirection: Axis.horizontal,
                                    itemCount:
                                        gridViewTutorsAuthRecordList.length,
                                    itemBuilder: (context, gridViewIndex) {
                                      final gridViewTutorsAuthRecord =
                                          gridViewTutorsAuthRecordList[
                                              gridViewIndex];
                                      return StreamBuilder<
                                          List<TutorsAuthRecord>>(
                                        stream: queryTutorsAuthRecord(),
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
                                          List<TutorsAuthRecord>
                                              tutorTagTutorsAuthRecordList =
                                              snapshot.data!;

                                          return wrapWithModel(
                                            model:
                                                _model.tutorTagModels.getModel(
                                              gridViewTutorsAuthRecord
                                                  .reference.id,
                                              gridViewIndex,
                                            ),
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: TutorTagWidget(
                                              key: Key(
                                                'Keybz9_${gridViewTutorsAuthRecord.reference.id}',
                                              ),
                                              img: gridViewTutorsAuthRecord
                                                  .photoUrl,
                                              refSesion:
                                                  gridViewTutorsAuthRecord
                                                      .reference,
                                              name: gridViewTutorsAuthRecord
                                                  .displayName,
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 30.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: FlutterFlowIconButton(
                                    borderRadius: 100.0,
                                    buttonSize: 80.0,
                                    icon: Icon(
                                      Icons.add_circle,
                                      color: FlutterFlowTheme.of(context).info,
                                      size: 60.0,
                                    ),
                                    onPressed: () async {
                                      context.pushNamed(
                                          CreateAccountPageWidget.routeName);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Opacity(
                              opacity: 0.3,
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'l87em861' /* VERSION 1.0 */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.roboto(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
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
                                ),
                              ),
                            ),
                          ),
                        ].addToEnd(SizedBox(height: 0.0)),
                      ),
                    ],
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
