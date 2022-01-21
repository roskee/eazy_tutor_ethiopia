import 'package:eazy_tutor_ethiopia/components/loading_button.dart';
import 'package:eazy_tutor_ethiopia/state_management/bloc_state.dart';
import 'package:eazy_tutor_ethiopia/state_management/eazy_tutor_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

///This provides the signup page for the user
///Must be pushed immidietly after the login page
class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
          child: SizedBox(
              width: 300,
              height: 580,
              child: Card(
                elevation: 3,
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Sign up to get started',
                                style: TextStyle(fontSize: 16),
                              )),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'First Name',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)))),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Last Name',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)))),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Email',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)))),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: 'Password',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)))),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: 'Repeat Password',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)))),
                            ),
                          ),
                          BlocBuilder<EazyTutorBloc, EazyTutorState>(
                            builder: (context, state) => LoadingButton(
                              futureOnPressed: () async {
                                return Future.delayed(
                                    const Duration(seconds: 5), () {
                                  return true;
                                });
                              },
                              onLoadingFinished: (value) {
                                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                          content: const Text(
                                              'Your Account has successfully been created!'),
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                  Navigator.of(context).pop();
                                                },
                                                child: const Text(
                                                    'Log in to your new account'))
                                          ],
                                        ));
                              },
                              child: const Padding(
                                padding: EdgeInsets.only(left: 8, right: 8),
                                child: Text('Sign Up'),
                              ),
                              animation: const CircularProgressIndicator(),
                            ),
                          ),
                          TextButton(
                            child: const Text("I already have an account"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ))),
    );
  }
}
