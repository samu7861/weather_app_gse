import 'package:auto_route/auto_route.dart';
import 'package:weather_app_gse/module/welcome/presentation/screen/welcome_screen.dart';

import '../../module/favorite/presentation/screen/favorite_screen.dart';
import '../../module/home/presentation/screen/home_screen.dart';
import '../../module/search/presentation/screen/search_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        // Home
        AutoRoute(
          page: WelcomeRoute.page,
          path: WelcomeScreen.path,
          initial: true,
          children: const [],
        ),

        AutoRoute(
          page: HomeRoute.page,
          path: HomeScreen.path,
          children: [
            AutoRoute(
              page: HomeRoute.page,
              path: "",
            ),
            AutoRoute(
              page: SearchRoute.page,
              path: SearchScreen.path,
            ),
            AutoRoute(
              page: FavoritesRoute.page,
              path: FavoritesScreen.path,
            ),
          ],
        ),
      ];
}
