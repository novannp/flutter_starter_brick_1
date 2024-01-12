import 'package:go_router/go_router.dart';

class MyRouteDelegate {
  static const String splash = '/';
  static final goRouter = GoRouter(
    initialLocation: splash,
    routes: [],
  );
}
