import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'onBoarding_event.dart';
part 'onBoarding_state.dart';

class OnboardingBloc extends Bloc<SplashEvent, SplashState> {
  OnboardingBloc() : super(SplashInitial()) {
    on<SplashEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
