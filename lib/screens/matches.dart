import 'package:flutter/material.dart';
import 'package:nurleague2/common/theme.dart';
import 'package:nurleague2/screens/fixtures.dart';
import 'package:nurleague2/screens/table.dart';
import 'package:nurleague2/models/match.dart';

class DecoratedTabBar extends StatelessWidget implements PreferredSizeWidget {
  DecoratedTabBar({@required this.tabBar, @required this.decoration});
  final TabBar tabBar;
  final BoxDecoration decoration;
  @override
  Size get preferredSize => tabBar.preferredSize;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: Container(decoration: decoration)),
        tabBar,
      ],
    );
  }
}

class Matches extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NurLeague',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image(
                    image: AssetImage(
                        'assets/logos/nurmakov-logo-bordered-small.png'),
                    width: 40,
                    height: 40,
                  ),
                ),
                SizedBox(width: 10),
                Text('NurLeague'),
              ],
            ),
            elevation: 0.0,
            actions: [
              IconButton(
                icon: Icon(
                  Icons.account_circle,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(48),
              child: Material(
                child: DecoratedTabBar(
                  tabBar: TabBar(
                    labelColor: appTheme.primaryColor,
                    indicatorColor: appTheme.primaryColor,
                    labelStyle: TextStyle(
                        fontFamily: 'Comfortaa', fontWeight: FontWeight.w900),
                    tabs: [
                      Tab(text: 'Fixtures'),
                      Tab(text: 'League Table'),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      bottom: BorderSide(
                          color: appTheme.secondaryHeaderColor, width: 2.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Fixtures(
                matches: [
                  LeagueMatch(
                    homeTeam: 'Chelsea',
                    guestTeam: 'Arsenal',
                    arena: 'Nurmakov Arena',
                    league: 'NurLeague',
                  ),
                  LeagueMatch(
                    homeTeam: 'Arsenal',
                    guestTeam: 'MU',
                    arena: 'Nurmakov Arena',
                    league: 'NurLeague',
                  ),
                  LeagueMatch(
                    homeTeam: 'Arsenal',
                    guestTeam: 'MU',
                    arena: 'Nurmakov Arena',
                    league: 'NurLeague',
                  ),
                ],
              ),
              LeagueTable(),
            ],
          ),
        ),
      ),
    );
  }
}
