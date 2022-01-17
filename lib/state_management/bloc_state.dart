import 'package:bloc/bloc.dart';
import 'package:eazy_tutor_ethiopia/state_management/eazy_tutor_state.dart';
import 'package:eazy_tutor_ethiopia/state_management/events.dart';

///this bloc provides the basic state functionality to the whole application
class EazyTutorBloc extends Bloc<EazyTutorEvent, EazyTutorState> {
  EazyTutorBloc() : super(const EazyTutorState(isLoggedIn: false)) {
    on<LoginEvent>(
        (event, emit) => emit(const EazyTutorState(isLoggedIn: true)));
    on<LogoutEvent>(
        (event, emit) => emit(const EazyTutorState(isLoggedIn: false)));
  }
}
