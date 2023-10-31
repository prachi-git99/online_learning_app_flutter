import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_learninig_app/screens/spalshScreens/bloc/splash_screen_event.dart';
import 'package:online_learninig_app/screens/spalshScreens/bloc/splash_screen_state.dart';


class SplashScreenBloc extends Bloc<SplashScreenEvent, SplashScreenState> {
  SplashScreenBloc() : super(SplashScreenState()) {
    on<SplashScreenEvent>((event, emit) {

      emit(SplashScreenState(page: state.page));
    });
  }
}
