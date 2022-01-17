import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///this is a basic card to show one tutor in brief
class TutorCard extends StatelessWidget {
  const TutorCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => const Card(
          child: SizedBox(
        height: 300,
      ));
}
