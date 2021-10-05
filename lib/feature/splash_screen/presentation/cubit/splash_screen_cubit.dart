import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'splash_screen_state.dart';

class SplashScreenCubit extends Cubit<SplashScreenState> {
  SplashScreenCubit() : super(SplashScreenInitial()) {
    // Fake app initialisation work
    emit(SplashScreenLoading());
    Future.delayed(
      Duration(seconds: 3),
      () => emit(SplashScreenComplete()),
    );
  }
}
