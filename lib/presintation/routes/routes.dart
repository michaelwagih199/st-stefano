import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:st_stefano_quiz_game/presintation/screens/splash/bloc/splash_bloc.dart';
import 'package:st_stefano_quiz_game/presintation/screens/splash/splash_screen.dart';
import 'package:st_stefano_quiz_game/utils/constants/strings.dart';
import '../screens/admin/admin-screen.dart';
import '../screens/admin/bloc/admin_bloc.dart';
import '../screens/home/bloc/home_bloc.dart';
import '../screens/home/home-screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case SPLSH_ROUTE:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => SplashBloc(),
            child: SplashScreen(title: HOME_SCREEN_TITLE),
          ),
        );

      case HOME_ROUTE:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeBloc(),
            child: HomeScreen(title: HOME_SCREEN_TITLE),
          ),
        );

      case ADMIN_ROUTE:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => AdminBloc(),
            child: const AdminScreen(title: ADMIN_SCREEN_TITLE),
          ),
        );
      default:
        return null;
    }
  }
}
