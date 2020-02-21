import 'dart:convert';

import 'package:congresos/models/events.dart';
import 'package:flutter/material.dart';

class ConferenceDetail extends StatefulWidget {
  final Events snapshot;
  static const String id = '/speaker_detail';

  ConferenceDetail({this.snapshot});

  @override
  _ConferenceDetailState createState() => _ConferenceDetailState();
}

class _ConferenceDetailState extends State<ConferenceDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del Conferencista'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                ),
                CircleAvatar(
                  backgroundImage:
                      NetworkImage(widget.snapshot.speaker.photo),
                  radius: MediaQuery.of(context).size.height * 0.15,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12.0),
              child: Center(
                child: Text(
                  '${widget.snapshot.speaker.speakerName} | ${widget.snapshot.speaker.nationality}',
                  style: Theme.of(context).textTheme.headline,
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Text(
                  '\n Currículum',
                  style: Theme.of(context).textTheme.subhead,
                ),
                Text(
                  '${widget.snapshot.speaker.cv}',
                  style: Theme.of(context).textTheme.body1,
                ),
                Text(
                  '\n Conferencias',
                  style: Theme.of(context).textTheme.subhead,
                ),
                Center(
                  child: Text(
                    '${widget.snapshot.name} \n',
                  ),
                ),
              ],
            ),
            Center(
              child: Text(
                '${widget.snapshot.date} | ${widget.snapshot.place} | ${widget.snapshot.hour}',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
