import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_gse/module/home/presentation/bloc/home_bloc.dart';

import '../config/flavor/flavors.dart';
import '../config/routes/auto_observer.dart';
import '../config/routes/auto_router_manager.dart';
import '../config/theme/app_theme.dart';
import 'home/data/datasource/home_datasource.dart';
import 'home/data/repository/home_repository.dart';
import 'welcome/presentation/bloc/welcome_bloc.dart';

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AutoRouterManager(),
        ),
        BlocProvider(
          create: (context) => WelcomeBloc(),
        ),
        BlocProvider(
          create: (context) => HomeBloc(
            repository: HomeRepository(
              datasource: HomeDatasource(),
            ),
          ),
        ),
      ],
      child: const App(),
    );
  }
}

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    RootStackRouter appRouter = context.watch<AutoRouterManager>().state;

    return MaterialApp.router(
      routerConfig: appRouter.config(
        navigatorObservers: () => [
          MyObserver(),
        ],
      ),
      debugShowCheckedModeBanner: false,
      title: F.title,
      theme: AppTheme().lightTheme,
      darkTheme: AppTheme().darkTheme,
    );
  }
}
