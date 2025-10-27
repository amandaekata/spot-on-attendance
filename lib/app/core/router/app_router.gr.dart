// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/material.dart' as _i16;
import 'package:spot_on/app/features/lecturer/about_courses/view/about_courses_screen.dart'
    as _i1;
import 'package:spot_on/app/features/auth/view/sign_in_screen.dart' as _i10;
import 'package:spot_on/app/features/auth/view/sign_up_screen.dart' as _i11;
import 'package:spot_on/app/features/lecturer/courses/class_availability/view/class_availability_screen.dart'
    as _i4;
import 'package:spot_on/app/features/lecturer/courses/start_attendance/view/start_attendance_screen.dart'
    as _i13;
import 'package:spot_on/app/features/lecturer/dashboard_and_components/bottom_navigation_bar_widget.dart'
    as _i2;
import 'package:spot_on/app/features/lecturer/dashboard_and_components/create_course/view/create_course_screen.dart'
    as _i5;
import 'package:spot_on/app/features/lecturer/dashboard_and_components/main_dashboard/view/dashboard_screen.dart'
    as _i6;
import 'package:spot_on/app/features/lecturer/dashboard_and_components/view_courses/view/view_courses_screen.dart'
    as _i14;
import 'package:spot_on/app/features/notifications/view/notifications_screen.dart'
    as _i7;
import 'package:spot_on/app/features/onboarding/view/choose_role_screen.dart'
    as _i3;
import 'package:spot_on/app/features/onboarding/view/onboarding_screens.dart'
    as _i8;
import 'package:spot_on/app/features/onboarding/view/splash_screen.dart'
    as _i12;
import 'package:spot_on/app/features/lecturer/report/view/report_screen.dart' as _i9;

abstract class $AppRouter extends _i15.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    AboutCoursesRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AboutCoursesScreen(),
      );
    },
    BottomNavigationBarWidget.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.BottomNavigationBarWidget(),
      );
    },
    ChooseRoleRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ChooseRoleScreen(),
      );
    },
    ClassAvailabilityRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ClassAvailabilityScreen(),
      );
    },
    CreateCourseRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.CreateCourseScreen(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.DashboardScreen(),
      );
    },
    NotificationsRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.NotificationsScreen(),
      );
    },
    OnboardingRoutes.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.OnboardingScreens(),
      );
    },
    ReportRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.ReportScreen(),
      );
    },
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.SignInScreen(
          key: args.key,
          role: args.role,
        ),
      );
    },
    SignUpRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.SignUpScreen(
          key: args.key,
          role: args.role,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.SplashScreen(),
      );
    },
    StartAttendanceRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.StartAttendanceScreen(),
      );
    },
    ViewCoursesRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.ViewCoursesScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AboutCoursesScreen]
class AboutCoursesRoute extends _i15.PageRouteInfo<void> {
  const AboutCoursesRoute({List<_i15.PageRouteInfo>? children})
      : super(
          AboutCoursesRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutCoursesRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i2.BottomNavigationBarWidget]
class BottomNavigationBarWidget extends _i15.PageRouteInfo<void> {
  const BottomNavigationBarWidget({List<_i15.PageRouteInfo>? children})
      : super(
          BottomNavigationBarWidget.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavigationBarWidget';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ChooseRoleScreen]
class ChooseRoleRoute extends _i15.PageRouteInfo<void> {
  const ChooseRoleRoute({List<_i15.PageRouteInfo>? children})
      : super(
          ChooseRoleRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChooseRoleRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ClassAvailabilityScreen]
class ClassAvailabilityRoute extends _i15.PageRouteInfo<void> {
  const ClassAvailabilityRoute({List<_i15.PageRouteInfo>? children})
      : super(
          ClassAvailabilityRoute.name,
          initialChildren: children,
        );

  static const String name = 'ClassAvailabilityRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CreateCourseScreen]
class CreateCourseRoute extends _i15.PageRouteInfo<void> {
  const CreateCourseRoute({List<_i15.PageRouteInfo>? children})
      : super(
          CreateCourseRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateCourseRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i6.DashboardScreen]
class DashboardRoute extends _i15.PageRouteInfo<void> {
  const DashboardRoute({List<_i15.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i7.NotificationsScreen]
class NotificationsRoute extends _i15.PageRouteInfo<void> {
  const NotificationsRoute({List<_i15.PageRouteInfo>? children})
      : super(
          NotificationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationsRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i8.OnboardingScreens]
class OnboardingRoutes extends _i15.PageRouteInfo<void> {
  const OnboardingRoutes({List<_i15.PageRouteInfo>? children})
      : super(
          OnboardingRoutes.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoutes';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i9.ReportScreen]
class ReportRoute extends _i15.PageRouteInfo<void> {
  const ReportRoute({List<_i15.PageRouteInfo>? children})
      : super(
          ReportRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReportRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SignInScreen]
class SignInRoute extends _i15.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    _i16.Key? key,
    required String role,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          SignInRoute.name,
          args: SignInRouteArgs(
            key: key,
            role: role,
          ),
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i15.PageInfo<SignInRouteArgs> page =
      _i15.PageInfo<SignInRouteArgs>(name);
}

class SignInRouteArgs {
  const SignInRouteArgs({
    this.key,
    required this.role,
  });

  final _i16.Key? key;

  final String role;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key, role: $role}';
  }
}

/// generated route for
/// [_i11.SignUpScreen]
class SignUpRoute extends _i15.PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({
    _i16.Key? key,
    required String role,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          SignUpRoute.name,
          args: SignUpRouteArgs(
            key: key,
            role: role,
          ),
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i15.PageInfo<SignUpRouteArgs> page =
      _i15.PageInfo<SignUpRouteArgs>(name);
}

class SignUpRouteArgs {
  const SignUpRouteArgs({
    this.key,
    required this.role,
  });

  final _i16.Key? key;

  final String role;

  @override
  String toString() {
    return 'SignUpRouteArgs{key: $key, role: $role}';
  }
}

/// generated route for
/// [_i12.SplashScreen]
class SplashRoute extends _i15.PageRouteInfo<void> {
  const SplashRoute({List<_i15.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i13.StartAttendanceScreen]
class StartAttendanceRoute extends _i15.PageRouteInfo<void> {
  const StartAttendanceRoute({List<_i15.PageRouteInfo>? children})
      : super(
          StartAttendanceRoute.name,
          initialChildren: children,
        );

  static const String name = 'StartAttendanceRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i14.ViewCoursesScreen]
class ViewCoursesRoute extends _i15.PageRouteInfo<void> {
  const ViewCoursesRoute({List<_i15.PageRouteInfo>? children})
      : super(
          ViewCoursesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ViewCoursesRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}
