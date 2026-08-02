import 'package:go_router/go_router.dart';

import '../features/home/home_page.dart';
import '../features/gasometry/gasometry_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/gasometry',
      builder: (context, state) => const GasometryPage(),
    ),
  ],
);