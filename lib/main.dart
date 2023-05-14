import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:st_stefano_quiz_game/presintation/routes/routes.dart';
import 'package:st_stefano_quiz_game/themes/style.dart';

import 'app_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(QuizGame(
      router: AppRouter(),
    ));
  });
}

class QuizGame extends StatelessWidget {
  final AppRouter router;

  const QuizGame({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      onGenerateRoute: router.generateRoute,
    );
  }
}