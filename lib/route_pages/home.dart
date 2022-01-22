import 'package:eazy_tutor_ethiopia/components/tutor_card.dart';
import 'package:eazy_tutor_ethiopia/state_management/bloc_state.dart';
import 'package:eazy_tutor_ethiopia/state_management/eazy_tutor_state.dart';
import 'package:eazy_tutor_ethiopia/state_management/events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

///This is the home page of the app
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EazyTutorBloc, EazyTutorState>(
        builder: (context, state) => SafeArea(
                child: DefaultTabController(
              length: 4,
              child: Material(
                  child: CustomScrollView(
                      physics: const BouncingScrollPhysics(),
                      primary: true,
                      slivers: [
                    SliverAppBar(
                      backgroundColor: Theme.of(context).backgroundColor,
                      title: Text(
                        'Eazy Tutor',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      actions: [
                        // Search button at the top
                        IconButton(
                            tooltip: 'Search',
                            onPressed: () {},
                            icon: Icon(
                              Icons.search,
                              color: Theme.of(context).primaryColor,
                            )),
                        const VerticalDivider(),
                        // Profile button at the top
                        BlocBuilder<EazyTutorBloc, EazyTutorState>(
                            builder: (context, state) => PopupMenuButton(
                                padding: const EdgeInsets.all(0),
                                tooltip: 'Your Profile',
                                //offset: const Offset(-40, 40),
                                elevation: 3,
                                itemBuilder: (context) => <PopupMenuEntry>[
                                      PopupMenuItem(
                                          child: DrawerHeader(
                                        child: TextButton.icon(
                                            onPressed: null,
                                            icon: const Icon(Icons.person),
                                            label: const Text('View Profile')),
                                      )),
                                      PopupMenuItem(
                                          padding: const EdgeInsets.all(0),
                                          onTap: () =>
                                              BlocProvider.of<EazyTutorBloc>(
                                                      context)
                                                  .add(LogoutEvent()),
                                          child: const ListTile(
                                            title: Text('Log Out'),
                                          ))
                                    ],
                                child: IconButton(
                                    onPressed: null,
                                    icon: Icon(Icons.person,
                                        color:
                                            Theme.of(context).primaryColor))))
                      ],
                    ),
                    SliverAppBar(
                      backgroundColor: Theme.of(context).backgroundColor,
                      titleSpacing: 0,
                      elevation: 3,
                      primary: false,
                      floating: true,
                      snap: true,
                      pinned: true,
                      automaticallyImplyLeading: false,
                      title: TabBar(
                        unselectedLabelColor:
                            Theme.of(context).selectedRowColor,
                        indicatorColor: Theme.of(context).primaryColor,
                        labelColor: Theme.of(context).primaryColor,
                        isScrollable: true,
                        indicator: UnderlineTabIndicator(
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 11)),
                        indicatorSize: TabBarIndicatorSize.tab,
                        tabs: const [
                          Tab(
                            icon: Icon(Icons.shop),
                            text: 'Your Tutors',
                          ),
                          Tab(
                            icon: Icon(Icons.history),
                            text: 'History',
                          ),
                          Tab(
                            icon: Icon(Icons.question_answer),
                            text: 'Quizzes',
                          ),
                          Tab(
                            icon: Icon(Icons.stacked_line_chart_sharp),
                            text: 'Progress',
                          )
                        ],
                      ),
                    ),
                    SliverFillRemaining(
                        child: TabBarView(
                      children: [
                        ListView(
                            physics: const ScrollPhysics(),
                            children: List.generate(
                                20, (index) => const TutorCard())),
                        const Text('hi'),
                        const Text('hi'),
                        const Text('hi'),
                      ],
                    ))
                    // SliverList(
                    //     delegate: SliverChildListDelegate.fixed(
                    //         List.generate(20, (index) => TutorCard()))),
                  ])),
            )));
  }
}
