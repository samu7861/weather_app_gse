import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../config/flavor/flavors.dart';
import '../config/routes/auto_observer.dart';
import '../config/routes/auto_router_manager.dart';

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AutoRouterManager(),
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
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: F.title,
      theme: ThemeData(
        useMaterial3: true,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            iconColor: Colors.white,
            textStyle: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
