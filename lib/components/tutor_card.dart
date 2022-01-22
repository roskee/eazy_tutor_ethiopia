import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///this is a basic card to show one tutor in brief
class TutorCard extends StatelessWidget {
  const TutorCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10, top: 10),
      child: InkWell(
        borderRadius: BorderRadius.circular(5),
        onTap: () {},
        child: Card(
            child: SizedBox(
                height: 160,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                        height: 135,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  //borderRadius: BorderRadius.circular(50),
                                  customBorder: const CircleBorder(),

                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    margin: const EdgeInsets.all(2),
                                    decoration: const BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/image.jpg'),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                                const Divider(),
                                InkWell(
                                  child: const Text('Avarez T.'),
                                  onTap: () {},
                                )
                              ],
                            ),
                            const VerticalDivider(),
                            Expanded(
                                child: Column(
                              children: [
                                const Text(
                                  'Math Tutor',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text('Lessons:'),
                                      Text('2/10')
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text('Quizzes:'),
                                      Text('2/10')
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text('Quizzes:'),
                                      Text('2/10')
                                    ],
                                  ),
                                ),
                                const Divider(),
                                const Align(
                                    alignment: Alignment.topLeft,
                                    child: Text('Progress:')),
                                Row(
                                  children: const [
                                    Expanded(
                                        child: SizedBox(
                                      height: 10,
                                      child: LinearProgressIndicator(
                                        value: 0.3,
                                      ),
                                    )),
                                    Text('20%')
                                  ],
                                )
                              ],
                            ))
                          ],
                        ))))),
      ));
}
