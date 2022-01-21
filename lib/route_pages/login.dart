import 'package:eazy_tutor_ethiopia/route_pages/signup.dart';
import 'package:eazy_tutor_ethiopia/state_management/bloc_state.dart';
import 'package:eazy_tutor_ethiopia/state_management/eazy_tutor_state.dart';
import 'package:eazy_tutor_ethiopia/state_management/events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

///This provides the login interface for the user
class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
          child: SizedBox(
              width: 300,
              height: 400,
              child: Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Continue your Tutor...',
                            style: TextStyle(fontSize: 16),
                          )),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Email',
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: 'Password',
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                        ),
                      ),
                      BlocBuilder<EazyTutorBloc, EazyTutorState>(
                          builder: (context, state) => ElevatedButton(
                              onPressed: () =>
                                  BlocProvider.of<EazyTutorBloc>(context)
                                      .add(LoginEvent()),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 8, right: 8),
                                child: Text('Login'),
                              ))),
                      TextButton(
                        child: const Text("I don't have an account"),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SignUpPage()));
                        },
                      )
                    ],
                  ),
                ),
              ))),
    );
  }
}
