// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:spot_on/app/features/auth/view/sign_in_screen.dart' as _i5;
import 'package:spot_on/app/features/auth/view/sign_up_screen.dart' as _i6;
import 'package:spot_on/app/features/create_course/view/create_course_screen.dart'
    as _i2;
import 'package:spot_on/app/features/dashboard/view/dashboard_screen.dart'
    as _i3;
import 'package:spot_on/app/features/onboarding/view/choose_role_screen.dart'
    as _i1;
import 'package:spot_on/app/features/onboarding/view/onboarding_screens.dart'
    as _i4;
import 'package:spot_on/app/features/onboarding/view/splash_screen.dart' as _i7;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    ChooseRoleRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ChooseRoleScreen(),
      );
    },
    CreateCourseRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CreateCourseScreen(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DashboardScreen(),
      );
    },
    OnboardingRoutes.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.OnboardingScreens(),
      );
    },
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.SignInScreen(
          key: args.key,
          role: args.role,
        ),
      );
    },
    SignUpRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.SignUpScreen(
          key: args.key,
          role: args.role,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.ChooseRoleScreen]
class ChooseRoleRoute extends _i8.PageRouteInfo<void> {
  const ChooseRoleRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ChooseRoleRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChooseRoleRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CreateCourseScreen]
class CreateCourseRoute extends _i8.PageRouteInfo<void> {
  const CreateCourseRoute({List<_i8.PageRouteInfo>? children})
      : super(
          CreateCourseRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateCourseRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DashboardScreen]
class DashboardRoute extends _i8.PageRouteInfo<void> {
  const DashboardRoute({List<_i8.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.OnboardingScreens]
class OnboardingRoutes extends _i8.PageRouteInfo<void> {
  const OnboardingRoutes({List<_i8.PageRouteInfo>? children})
      : super(
          OnboardingRoutes.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoutes';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SignInScreen]
class SignInRoute extends _i8.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    _i9.Key? key,
    required String role,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          SignInRoute.name,
          args: SignInRouteArgs(
            key: key,
            role: role,
          ),
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i8.PageInfo<SignInRouteArgs> page =
      _i8.PageInfo<SignInRouteArgs>(name);
}

class SignInRouteArgs {
  const SignInRouteArgs({
    this.key,
    required this.role,
  });

  final _i9.Key? key;

  final String role;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key, role: $role}';
  }
}

/// generated route for
/// [_i6.SignUpScreen]
class SignUpRoute extends _i8.PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({
    _i9.Key? key,
    required String role,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          SignUpRoute.name,
          args: SignUpRouteArgs(
            key: key,
            role: role,
          ),
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i8.PageInfo<SignUpRouteArgs> page =
      _i8.PageInfo<SignUpRouteArgs>(name);
}

class SignUpRouteArgs {
  const SignUpRouteArgs({
    this.key,
    required this.role,
  });

  final _i9.Key? key;

  final String role;

  @override
  String toString() {
    return 'SignUpRouteArgs{key: $key, role: $role}';
  }
}

/// generated route for
/// [_i7.SplashScreen]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
