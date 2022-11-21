import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:flutter_tex/src/views/tex_view_mobile.dart'
    if (dart.library.html) 'package:flutter_tex/src/views/tex_view_web.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

///A Flutter Widget to render Mathematics / Maths, Physics and Chemistry, Statistics / Stats Equations based on LaTeX with full HTML and JavaScript support.
class TeXView extends StatefulWidget {
  /// A list of TeXViewChild.
  final TeXViewWidget child;

  /// Style TeXView Widget with [TeXViewStyle].
  final TeXViewStyle? style;

  /// TeXView height (Only for Web)
  //final double? height;

  /// Register fonts.
  final List<TeXViewFont>? fonts;

  /// Render Engine to render TeX.
  final TeXViewRenderingEngine? renderingEngine;

  /// Show a loading widget before rendering completes.
  final Widget Function(BuildContext context)? loadingWidgetBuilder;

  /// Callback when TEX rendering finishes.
  final Function(double height)? onRenderFinished;

  /// Navigation Delegate, Works only in mobile
  final FutureOr<NavigationDecision> Function(NavigationRequest)?
      navigationDelegate;

  /// Gives the progress of loading, works only in mobile.
  final Function(int? value)? onProgress;

  const TeXView({
    Key? key,
    required this.child,
    this.fonts,
    // this.height = 500,
    this.style,
    this.loadingWidgetBuilder,
    this.onRenderFinished,
    this.renderingEngine,
    this.navigationDelegate,
    this.onProgress,
  }) : super(key: key);

  @override
  TeXViewState createState() => TeXViewState();
}
