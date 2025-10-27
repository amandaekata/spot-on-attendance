//These are my page routes

import 'package:auto_route/auto_route.dart';
import 'package:spot_on/app/core/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: OnboardingRoutes.page),
    AutoRoute(page: ChooseRoleRoute.page),
    AutoRoute(page: SignInRoute.page),
    AutoRoute(page: SignUpRoute.page),
    AutoRoute(page: DashboardRoute.page),
    AutoRoute(page: CreateCourseRoute.page),
    AutoRoute(page: ViewCoursesRoute.page),
    AutoRoute(page: AboutCoursesRoute.page),
    AutoRoute(page: BottomNavigationBarWidget.page),
    AutoRoute(page: ReportRoute.page),
    AutoRoute(page: NotificationsRoute.page),
    AutoRoute(page: StartAttendanceRoute.page),
    AutoRoute(page: ClassAvailabilityRoute.page),
  ];
}
