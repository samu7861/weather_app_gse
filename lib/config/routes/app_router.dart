import 'package:auto_route/auto_route.dart';

import '../../module/home/screen/home_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        // Home
        AutoRoute(
          page: HomeRoute.page,
          path:  HomeScreen.path,
          initial: true,
        ),
      ];
}
