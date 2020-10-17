import 'package:bloc/bloc.dart';

class AppBlocDelegate extends BlocDelegate {
  @override
  void onEvent(
    Bloc<Object, Object> bloc,
    Object event,
  ) {
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(
    Bloc<Object, Object> bloc,
    Transition<Object, Object> transition,
  ) {
    super.onTransition(bloc, transition);
  }

  @override
  void onError(
    Bloc<Object, Object> bloc,
    Object error,
    StackTrace stacktrace,
  ) {
    super.onError(bloc, error, stacktrace);
  }
}
