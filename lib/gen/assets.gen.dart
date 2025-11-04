// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/arrow-right.png
  AssetGenImage get arrowRight =>
      const AssetGenImage('assets/icons/arrow-right.png');

  /// File path: assets/icons/attendance_icon.png
  AssetGenImage get attendanceIcon =>
      const AssetGenImage('assets/icons/attendance_icon.png');

  /// File path: assets/icons/bell.png
  AssetGenImage get bell => const AssetGenImage('assets/icons/bell.png');

  /// File path: assets/icons/courses_icon.png
  AssetGenImage get coursesIcon =>
      const AssetGenImage('assets/icons/courses_icon.png');

  /// File path: assets/icons/dashboard_icon.png
  AssetGenImage get dashboardIcon =>
      const AssetGenImage('assets/icons/dashboard_icon.png');

  /// File path: assets/icons/list.png
  AssetGenImage get list => const AssetGenImage('assets/icons/list.png');

  /// File path: assets/icons/nav-arrow-right.png
  AssetGenImage get navArrowRight =>
      const AssetGenImage('assets/icons/nav-arrow-right.png');

  /// File path: assets/icons/plus.png
  AssetGenImage get plus => const AssetGenImage('assets/icons/plus.png');

  /// File path: assets/icons/reports_icon.png
  AssetGenImage get reportsIcon =>
      const AssetGenImage('assets/icons/reports_icon.png');

  /// File path: assets/icons/schedule_icon.png
  AssetGenImage get scheduleIcon =>
      const AssetGenImage('assets/icons/schedule_icon.png');

  /// File path: assets/icons/settings_icon.png
  AssetGenImage get settingsIcon =>
      const AssetGenImage('assets/icons/settings_icon.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    arrowRight,
    attendanceIcon,
    bell,
    coursesIcon,
    dashboardIcon,
    list,
    navArrowRight,
    plus,
    reportsIcon,
    scheduleIcon,
    settingsIcon,
  ];
}

class Assets {
  const Assets._();

  static const String aEnv = '.env';
  static const AssetGenImage attendanceImage = AssetGenImage(
    'assets/attendance_image.png',
  );
  static const AssetGenImage attendanceSummaryNotification = AssetGenImage(
    'assets/attendance_summary_notification.png',
  );
  static const AssetGenImage auditLogs = AssetGenImage('assets/audit_logs.png');
  static const AssetGenImage classSchedule = AssetGenImage(
    'assets/class-schedule.png',
  );
  static const AssetGenImage confirmAvailability = AssetGenImage(
    'assets/confirm_availability.png',
  );
  static const AssetGenImage graduationHat = AssetGenImage(
    'assets/graduation_hat.png',
  );
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const AssetGenImage manageUsers = AssetGenImage(
    'assets/manage_users.png',
  );
  static const AssetGenImage markAttendance = AssetGenImage(
    'assets/mark-attendance.png',
  );
  static const AssetGenImage onboard1 = AssetGenImage('assets/onboard-1.png');
  static const AssetGenImage onboard2 = AssetGenImage('assets/onboard-2.png');
  static const AssetGenImage onboard3 = AssetGenImage('assets/onboard-3.png');
  static const AssetGenImage purpleBellNotification = AssetGenImage(
    'assets/purple_bell_notification.png',
  );
  static const AssetGenImage rememberCheckCircle = AssetGenImage(
    'assets/remember-check-circle.png',
  );
  static const AssetGenImage rememberCircle = AssetGenImage(
    'assets/remember-circle.png',
  );
  static const AssetGenImage reportImage = AssetGenImage(
    'assets/report_image.png',
  );
  static const AssetGenImage scheduleNotif = AssetGenImage(
    'assets/schedule_notif.png',
  );
  static const AssetGenImage settingsImage = AssetGenImage(
    'assets/settings_image.png',
  );
  static const AssetGenImage spotonLogo = AssetGenImage(
    'assets/spoton-logo.png',
  );
  static const AssetGenImage viewHistory = AssetGenImage(
    'assets/view_history.png',
  );
  static const AssetGenImage yellowBellNotification = AssetGenImage(
    'assets/yellow_bell_notification.png',
  );

  /// List of all assets
  static List<dynamic> get values => [
    aEnv,
    attendanceImage,
    attendanceSummaryNotification,
    auditLogs,
    classSchedule,
    confirmAvailability,
    graduationHat,
    manageUsers,
    markAttendance,
    onboard1,
    onboard2,
    onboard3,
    purpleBellNotification,
    rememberCheckCircle,
    rememberCircle,
    reportImage,
    scheduleNotif,
    settingsImage,
    spotonLogo,
    viewHistory,
    yellowBellNotification,
  ];
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
