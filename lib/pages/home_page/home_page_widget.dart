import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/fondo/fondo_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    animationsMap.addAll({
      'mouseRegionOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          BlurEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(2.0, 2.0),
          ),
        ],
      ),
      'mouseRegionOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          BlurEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(2.0, 2.0),
          ),
        ],
      ),
      'mouseRegionOnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          BlurEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(2.0, 2.0),
          ),
        ],
      ),
      'mouseRegionOnActionTriggerAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          BlurEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(2.0, 2.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
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
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF99BF9C),
                                  fontSize: 40.0,
                                  letterSpacing: 1.0,
                                  fontWeight: FontWeight.w800,
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
                                16.0, 20.0, 16.0, 0.0),
                            child: Container(
                              height: 540.0,
                              decoration: BoxDecoration(),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: GridView(
                                  padding: EdgeInsets.zero,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 15.0,
                                    mainAxisSpacing: 15.0,
                                    childAspectRatio: 1.0,
                                  ),
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    MouseRegion(
                                      opaque: false,
                                      cursor: MouseCursor.defer ??
                                          MouseCursor.defer,
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                              UserPageWidget.routeName);
                                        },
                                        child: Container(
                                          width: 200.0,
                                          height: 200.0,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            'assets/images/mod1-perfil.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      onEnter: ((event) async {
                                        safeSetState(() =>
                                            _model.mouseRegionHovered1 = true);
                                        if (animationsMap[
                                                'mouseRegionOnActionTriggerAnimation1'] !=
                                            null) {
                                          await animationsMap[
                                                  'mouseRegionOnActionTriggerAnimation1']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                      }),
                                      onExit: ((event) async {
                                        safeSetState(() =>
                                            _model.mouseRegionHovered1 = false);
                                        if (animationsMap[
                                                'mouseRegionOnActionTriggerAnimation1'] !=
                                            null) {
                                          await animationsMap[
                                                  'mouseRegionOnActionTriggerAnimation1']!
                                              .controller
                                              .reverse();
                                        }
                                      }),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'mouseRegionOnActionTriggerAnimation1']!,
                                    ),
                                    MouseRegion(
                                      opaque: false,
                                      cursor: MouseCursor.defer ??
                                          MouseCursor.defer,
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                              UserPageWidget.routeName);
                                        },
                                        child: Container(
                                          width: 200.0,
                                          height: 200.0,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            'https://images.unsplash.com/photo-1605710990211-50b342b318ff?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxVU0VSJTIwQkxJTkR8ZW58MHx8fHwxNzQ0MDU1NDgzfDA&ixlib=rb-4.0.3&q=80&w=1080',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      onEnter: ((event) async {
                                        safeSetState(() =>
                                            _model.mouseRegionHovered2 = true);
                                        if (animationsMap[
                                                'mouseRegionOnActionTriggerAnimation2'] !=
                                            null) {
                                          await animationsMap[
                                                  'mouseRegionOnActionTriggerAnimation2']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                      }),
                                      onExit: ((event) async {
                                        safeSetState(() =>
                                            _model.mouseRegionHovered2 = false);
                                        if (animationsMap[
                                                'mouseRegionOnActionTriggerAnimation2'] !=
                                            null) {
                                          await animationsMap[
                                                  'mouseRegionOnActionTriggerAnimation2']!
                                              .controller
                                              .reverse();
                                        }
                                      }),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'mouseRegionOnActionTriggerAnimation2']!,
                                    ),
                                    MouseRegion(
                                      opaque: false,
                                      cursor: MouseCursor.defer ??
                                          MouseCursor.defer,
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                              UserPageWidget.routeName);
                                        },
                                        child: Container(
                                          width: 200.0,
                                          height: 200.0,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxVU0VSJTIwfGVufDB8fHx8MTc0NDA1NTQ5NXww&ixlib=rb-4.0.3&q=80&w=1080',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      onEnter: ((event) async {
                                        safeSetState(() =>
                                            _model.mouseRegionHovered3 = true);
                                        if (animationsMap[
                                                'mouseRegionOnActionTriggerAnimation3'] !=
                                            null) {
                                          await animationsMap[
                                                  'mouseRegionOnActionTriggerAnimation3']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                      }),
                                      onExit: ((event) async {
                                        safeSetState(() =>
                                            _model.mouseRegionHovered3 = false);
                                        if (animationsMap[
                                                'mouseRegionOnActionTriggerAnimation3'] !=
                                            null) {
                                          await animationsMap[
                                                  'mouseRegionOnActionTriggerAnimation3']!
                                              .controller
                                              .reverse();
                                        }
                                      }),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'mouseRegionOnActionTriggerAnimation3']!,
                                    ),
                                    MouseRegion(
                                      opaque: false,
                                      cursor: MouseCursor.defer ??
                                          MouseCursor.defer,
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                              UserPageWidget.routeName);
                                        },
                                        child: Container(
                                          width: 200.0,
                                          height: 200.0,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            'https://images.unsplash.com/photo-1605812830455-2fadc55bc4ba?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxGQVRIRVJ8ZW58MHx8fHwxNzQ0MDU1NTA4fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      onEnter: ((event) async {
                                        safeSetState(() =>
                                            _model.mouseRegionHovered4 = true);
                                        if (animationsMap[
                                                'mouseRegionOnActionTriggerAnimation4'] !=
                                            null) {
                                          await animationsMap[
                                                  'mouseRegionOnActionTriggerAnimation4']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                      }),
                                      onExit: ((event) async {
                                        safeSetState(() =>
                                            _model.mouseRegionHovered4 = false);
                                        if (animationsMap[
                                                'mouseRegionOnActionTriggerAnimation4'] !=
                                            null) {
                                          await animationsMap[
                                                  'mouseRegionOnActionTriggerAnimation4']!
                                              .controller
                                              .reverse();
                                        }
                                      }),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'mouseRegionOnActionTriggerAnimation4']!,
                                    ),
                                    FlutterFlowIconButton(
                                      borderRadius: 100.0,
                                      buttonSize: 40.0,
                                      icon: Icon(
                                        Icons.add_circle,
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        size: 80.0,
                                      ),
                                      onPressed: () async {
                                        context.pushNamed(
                                            CreateAccountPageWidget.routeName);
                                      },
                                    ),
                                  ],
                                ),
                              ),
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
                                        fontFamily: 'Roboto',
                                        letterSpacing: 0.0,
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
