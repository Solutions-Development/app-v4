import 'package:congresos/screens/conference_detail.dart';
import 'package:congresos/screens/home.dart';
import 'package:congresos/screens/map.dart';
import 'package:congresos/screens/links.dart';
import 'package:congresos/screens/menu.dart';
import 'package:congresos/screens/presentation.dart';
import 'package:congresos/screens/speakers.dart';
import 'package:congresos/screens/sponsors.dart';
import 'package:congresos/utils/strings.dart';
import 'package:flutter/material.dart';

import 'screens/events.dart';
import 'utils/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: mainTheme,
      initialRoute: MenuScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        Strings.homeScreenItems[0]: (context) => EventsScreen(),
        Strings.homeScreenItems[1]: (context) => SpeakersScreen(),
        Strings.homeScreenItems[2]: (context) => MapScreen(),
        Strings.homeScreenItems[3]: (context) => SponsorsScreen(),
        Strings.homeScreenItems[4]: (context) => LinksScreen(),
        Strings.homeScreenItems[5]: (context) => PresentationsScreen(),
        MenuScreen.id: (context) => MenuScreen(),
        ConferenceDetail.id: (context) => ConferenceDetail(),
      },
    );
  }
}