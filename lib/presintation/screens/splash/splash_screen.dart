
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../components/decoration-utils.dart';
import 'bloc/splash_bloc.dart';

class SplashScreen extends StatefulWidget {
  final String title;
  const SplashScreen({super.key, required this.title});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
    Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        child: Container(
          width: screenWidth,
          decoration: backGroundPattern(),
          child: BlocBuilder<SplashBloc, SplashState>(
            builder: (context, state) {
              return const Column(
                children: [],
              );
            },
          ),
        ),
      ),
    );
  }
}