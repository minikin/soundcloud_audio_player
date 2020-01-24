import 'package:bloc/bloc.dart';

class AppBlocDelegate extends BlocDelegate {
  @override
  void onEvent(
    Bloc<dynamic, dynamic> bloc,
    Object event,
  ) {
    super.onEvent(bloc, event);
    print(event);
  }

  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    super.onTransition(bloc, transition);
  }

  @override
  void onError(
    Bloc<dynamic, dynamic> bloc,
    Object error,
    StackTrace stacktrace,
  ) {
    super.onError(bloc, error, stacktrace);
    print(error);
  }
}
