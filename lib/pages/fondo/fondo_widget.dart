import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'fondo_model.dart';
export 'fondo_model.dart';

class FondoWidget extends StatefulWidget {
  const FondoWidget({super.key});

  @override
  State<FondoWidget> createState() => _FondoWidgetState();
}

class _FondoWidgetState extends State<FondoWidget> {
  late FondoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FondoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 1.0,
        mainAxisSpacing: 1.0,
        childAspectRatio: 1.0,
      ),
      scrollDirection: Axis.vertical,
      children: [
        Opacity(
          opacity: 0.2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: SvgPicture.asset(
              'assets/images/overlapping-circles.svg',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.none,
            ),
          ),
        ),
        Opacity(
          opacity: 0.2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: SvgPicture.asset(
              'assets/images/overlapping-circles.svg',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.none,
            ),
          ),
        ),
        Opacity(
          opacity: 0.2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: SvgPicture.asset(
              'assets/images/overlapping-circles.svg',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.none,
            ),
          ),
        ),
        Opacity(
          opacity: 0.2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: SvgPicture.asset(
              'assets/images/overlapping-circles.svg',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.none,
            ),
          ),
        ),
        Opacity(
          opacity: 0.2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: SvgPicture.asset(
              'assets/images/overlapping-circles.svg',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.none,
            ),
          ),
        ),
        Opacity(
          opacity: 0.2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: SvgPicture.asset(
              'assets/images/overlapping-circles.svg',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.none,
            ),
          ),
        ),
        Opacity(
          opacity: 0.2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: SvgPicture.asset(
              'assets/images/overlapping-circles.svg',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.none,
            ),
          ),
        ),
        Opacity(
          opacity: 0.2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: SvgPicture.asset(
              'assets/images/overlapping-circles.svg',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.none,
            ),
          ),
        ),
        Opacity(
          opacity: 0.2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: SvgPicture.asset(
              'assets/images/overlapping-circles.svg',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.none,
            ),
          ),
        ),
        Opacity(
          opacity: 0.2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: SvgPicture.asset(
              'assets/images/overlapping-circles.svg',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.none,
            ),
          ),
        ),
        Opacity(
          opacity: 0.2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: SvgPicture.asset(
              'assets/images/overlapping-circles.svg',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.none,
            ),
          ),
        ),
        Opacity(
          opacity: 0.2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: SvgPicture.asset(
              'assets/images/overlapping-circles.svg',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.none,
            ),
          ),
        ),
        Opacity(
          opacity: 0.2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: SvgPicture.asset(
              'assets/images/overlapping-circles.svg',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.none,
            ),
          ),
        ),
        Opacity(
          opacity: 0.2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: SvgPicture.asset(
              'assets/images/overlapping-circles.svg',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.none,
            ),
          ),
        ),
        Opacity(
          opacity: 0.2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: SvgPicture.asset(
              'assets/images/overlapping-circles.svg',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.none,
            ),
          ),
        ),
        Opacity(
          opacity: 0.2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: SvgPicture.asset(
              'assets/images/overlapping-circles.svg',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.none,
            ),
          ),
        ),
        Opacity(
          opacity: 0.2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: SvgPicture.asset(
              'assets/images/overlapping-circles.svg',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.none,
            ),
          ),
        ),
        Opacity(
          opacity: 0.2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: SvgPicture.asset(
              'assets/images/overlapping-circles.svg',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.none,
            ),
          ),
        ),
      ],
    );
  }
}
