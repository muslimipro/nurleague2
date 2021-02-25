import 'package:flutter/material.dart';
import 'package:nurleague2/common/theme.dart';
import 'package:nurleague2/screens/matches.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nurleague',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => Matches(),
      },
    );
  }
}
