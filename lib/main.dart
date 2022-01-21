import 'package:eazy_tutor_ethiopia/route_pages/home.dart';
import 'package:eazy_tutor_ethiopia/route_pages/login.dart';
import 'package:eazy_tutor_ethiopia/state_management/bloc_state.dart';
import 'package:eazy_tutor_ethiopia/state_management/eazy_tutor_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const EazyTutorialLauncher());
}

/// This is the first stateless widget that is launched at startup
class EazyTutorialLauncher extends StatelessWidget {
  const EazyTutorialLauncher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EazyTutorBloc>(
        create: (context) => EazyTutorBloc(),
        child: BlocBuilder<EazyTutorBloc, EazyTutorState>(
            builder: (context, state) => MaterialApp(
                  theme: ThemeData(
                      backgroundColor: Colors.white,
                      primarySwatch: Colors.green,
                      selectedRowColor: Colors.green[200]),
                  home: state.isLoggedIn ? const Home() : const LogInPage(),
                )));
  }
}
