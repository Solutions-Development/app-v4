import 'dart:async';

import 'package:congresos/api/fetch_data.dart';
import 'package:congresos/models/conferencistas.dart';
import 'package:congresos/podo/screen_arguments.dart';
import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';
import 'package:http/http.dart';

import '../api/fetch_data.dart';
import 'speaker_detail.dart';

class SpeakersScreen extends StatefulWidget {
  static const String id = '/speaker';

  @override
  _SpeakersScreenState createState() => _SpeakersScreenState();
}

class _SpeakersScreenState extends State<SpeakersScreen> {
  Connectivity connectivity;
  StreamSubscription<ConnectivityResult> subscription;

  @override
  void initState() {
    super.initState();
    connectivity = Connectivity();
    subscription =
        connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.wifi ||
          result == ConnectivityResult.mobile) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: FutureBuilder<List<Conferencistas>>(
        future: fetchConferencistas(Client(), args.message),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          if (snapshot.connectionState == ConnectionState.done) {
            return buildListView(
              snapshot.data,
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  ListView buildListView(List<Conferencistas> conferencistas) =>
      ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(
                conferencistas[index].nombre,
                style: Theme.of(context).textTheme.body1,
              ),
              leading: CircleAvatar(
               backgroundImage: NetworkImage('https://cdn.mytalented.com/logo'),
                radius: 24,
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                 builder: (context) => SpeakerDetailssScreen(
                  snapshot: conferencistas[index],
                ),
             ),
           ),
            ),
          );
        },
        itemCount: conferencistas.length,
      );
}
