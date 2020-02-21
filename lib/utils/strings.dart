import 'package:congresos/screens/events.dart';
import 'package:congresos/screens/links.dart';
import 'package:congresos/screens/map.dart';
import 'package:congresos/screens/presentation.dart';
import 'package:congresos/screens/speakers.dart';
import 'package:congresos/screens/sponsors.dart';

//TODO Move all strings here instead of calling each

class Strings {
  static final List<String> homeScreenItems = [
    EventsScreen.id,
    SpeakersScreen.id,
    MapScreen.id,
    SponsorsScreen.id,
    LinksScreen.id,
    PresentationsScreen.id
  ];
  static final List sponsors = ['Diamante', 'Oro', 'Plata', 'Bronze'];
}