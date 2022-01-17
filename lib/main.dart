import 'package:eazy_tutor_ethiopia/route_pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EazyTutorialLauncher());
}

/// This is the first stateless widget that is launched at startup
class EazyTutorialLauncher extends StatelessWidget {
  const EazyTutorialLauncher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {'/': (context) => const Home()},
    );
  }
}
