import 'package:go_router/go_router.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return "Hello world";
          // return const SplashScreenPages();
        },
      ),
    ],
  );
}

final appRouter = AppRouter();
