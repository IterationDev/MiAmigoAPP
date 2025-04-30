import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'tutor_tag_model.dart';
export 'tutor_tag_model.dart';

class TutorTagWidget extends StatefulWidget {
  const TutorTagWidget({
    super.key,
    String? img,
    required this.refSesion,
    this.name,
  }) : this.img = img ??
            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/mi-amigo-v1-e5ixbf/assets/m4bakgiqppj6/userDefault.svg';

  final String img;
  final DocumentReference? refSesion;
  final String? name;

  @override
  State<TutorTagWidget> createState() => _TutorTagWidgetState();
}

class _TutorTagWidgetState extends State<TutorTagWidget>
    with TickerProviderStateMixin {
  late TutorTagModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TutorTagModel());

    animationsMap.addAll({
      'mouseRegionOnActionTriggerAnimation': AnimationInfo(
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
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          _model.dataTut = await queryTutorsAuthRecordOnce(
            queryBuilder: (tutorsAuthRecord) => tutorsAuthRecord.where(
              'email',
              isEqualTo: currentUserEmail,
            ),
            singleRecord: true,
          ).then((s) => s.firstOrNull);

          context.pushNamed(
            TutorPageWidget.routeName,
            queryParameters: {
              'tutorRef': serializeParam(
                widget.refSesion,
                ParamType.DocumentReference,
              ),
            }.withoutNulls,
          );

          safeSetState(() {});
        },
        child: Container(
          width: 200.0,
          height: 200.0,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.network(
            valueOrDefault<String>(
              widget.img,
              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/mi-amigo-v1-e5ixbf/assets/m4bakgiqppj6/userDefault.svg',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
        await actions.textToVoice(
          widget.name,
          '',
        );
        if (animationsMap['mouseRegionOnActionTriggerAnimation'] != null) {
          await animationsMap['mouseRegionOnActionTriggerAnimation']!
              .controller
              .forward(from: 0.0);
        }
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
        if (animationsMap['mouseRegionOnActionTriggerAnimation'] != null) {
          await animationsMap['mouseRegionOnActionTriggerAnimation']!
              .controller
              .reverse();
        }
      }),
    ).animateOnActionTrigger(
      animationsMap['mouseRegionOnActionTriggerAnimation']!,
    );
  }
}
