import 'package:flutter/material.dart';
import 'package:nurleague2/common/theme.dart';
import 'package:nurleague2/models/match.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Colors.blueGrey[100]
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_0 = Path();
    path_0.moveTo(0, size.height);
    path_0.lineTo(size.width, size.height * 0.7000000);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(0, size.height);

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MatchesListItem extends StatelessWidget {
  MatchesListItem({this.match}) : super(key: ObjectKey(match));
  final LeagueMatch match;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      // padding: EdgeInsets.all(8.0),
      color: Colors.blueGrey[50],
      height: 300,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  match.league,
                  style: TextStyle(
                    fontSize: 23.0,
                    color: appTheme.primaryColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 20),
                Text(match.arena),
                SizedBox(height: 10),
                Text('24 Feb 2021, 2:00 AM'),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image(
                                image:
                                    AssetImage('assets/logos/chelsea-fc.png'),
                                width: 50,
                                height: 50,
                              ),
                              SizedBox(width: 10),
                              Text('Chelsea'),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Image(
                                image:
                                    AssetImage('assets/logos/arsenal-fc.png'),
                                width: 50,
                                height: 50,
                              ),
                              SizedBox(width: 10),
                              Text('Arsenal'),
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '24',
                            style: TextStyle(
                              fontSize: 23.0,
                              color: appTheme.primaryColor,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            'Wed',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: appTheme.primaryColor,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: CustomPaint(
              size: Size(450, (450 * 0.4444444444444444).toDouble()),
              painter: RPSCustomPainter(),
            ),
          ),
        ],
      ),
    );
  }
}

class Fixtures extends StatefulWidget {
  Fixtures({Key key, this.matches}) : super(key: key);

  final List<LeagueMatch> matches;

  @override
  _FixturesState createState() => _FixturesState();
}

class _FixturesState extends State<Fixtures> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: widget.matches.map((LeagueMatch match) {
        return MatchesListItem(match: match);
      }).toList(),
    );
  }
}
