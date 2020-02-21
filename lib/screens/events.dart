import 'package:congresos/api/fetch_data.dart';
import 'package:congresos/components/event_list.dart';
import 'package:congresos/components/load_scaffold_body.dart';
import 'package:congresos/models/events.dart';
import 'package:congresos/podo/screen_arguments.dart';
import 'package:congresos/utils/theme.dart';
import 'package:congresos/widgets/events_menu.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:sticky_headers/sticky_headers.dart';

import '../api/fetch_data.dart';
import '../api/fetch_data.dart';
import '../api/fetch_data.dart';
import '../api/fetch_data.dart';
import '../api/fetch_data.dart';
import '../api/fetch_data.dart';

class EventsScreen extends StatefulWidget {
  static const String id = '/events';

  @override
  _EventsScreenState createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {

  var future = fetchEvents(Client());

  @override
  Widget build(BuildContext context) {
    final ScreenArguments args = ModalRoute
        .of(context)
        .settings
        .arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          args.title,
        ),
        actions: <Widget>[EventsMenuWidget(
          onDay: () {
            setState(() {
              future = fetchEventsDay(Client());
            });
          },
          onHour: () {
            setState(() {
              future = fetchEventsHour(Client());
            });
          },
          onPlace: (){
            setState(() {
              future = fetchEventsSalon(Client());
            });
          },
        )
        ],
      ),
      body: LoadScaffoldBodyComponent(
        future: future,
        function: (List<EventsModel> snapshot) {
          return ListView.builder(
            itemBuilder: (context, i) =>
                StickyHeader(
                  header: Container(
                    child: Text(
                      snapshot[i].event[i].place,
                      style: Theme
                          .of(context)
                          .textTheme
                          .title,
                    ),
                    padding: EdgeInsets.all(8.0),
                    color: Colors.red,
                    width: double.infinity,
                  ),
                  content: EventListComponent(snapshot[i]),
                ),
            itemCount: snapshot.length,
          );
        },
      ),
    );
  }
}
