import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'users_tag_model.dart';
export 'users_tag_model.dart';

class UsersTagWidget extends StatefulWidget {
  const UsersTagWidget({
    super.key,
    String? img,
    this.refSesionUser,
    this.name,
  }) : this.img = img ??
            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/mi-amigo-v1-e5ixbf/assets/m4bakgiqppj6/userDefault.svg';

  final String img;
  final DocumentReference? refSesionUser;
  final String? name;

  @override
  State<UsersTagWidget> createState() => _UsersTagWidgetState();
}

class _UsersTagWidgetState extends State<UsersTagWidget>
    with TickerProviderStateMixin {
  late UsersTagModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UsersTagModel());

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
          context.pushNamed(
            UserPageWidget.routeName,
            queryParameters: {
              'userRef': serializeParam(
                widget.refSesionUser,
                ParamType.DocumentReference,
              ),
            }.withoutNulls,
          );
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
