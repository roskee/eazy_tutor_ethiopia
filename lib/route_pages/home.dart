import 'package:eazy_tutor_ethiopia/state_management/bloc_state.dart';
import 'package:eazy_tutor_ethiopia/state_management/eazy_tutor_state.dart';
import 'package:eazy_tutor_ethiopia/state_management/events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EazyTutorBloc, EazyTutorState>(
        builder: (context, state) => Scaffold(
              appBar: AppBar(
                title: const Text('Eazy Tutor'),
              ),
              drawer: Drawer(
                child: Column(
                  children: [
                    const DrawerHeader(
                        child: Center(child: Text('Your Profile'))),
                    ListTile(
                      leading: const Text('Sign Out'),
                      onTap: () => BlocProvider.of<EazyTutorBloc>(context)
                          .add(LogoutEvent()),
                    )
                  ],
                ),
              ),
              body: const Center(
                child: Text('Hello world'),
              ),
            ));
  }
}
