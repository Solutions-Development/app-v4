import 'package:flutter/material.dart';

import '../models/conferencistas.dart';

class SpeakerDetailssScreen extends StatefulWidget {
  final Conferencistas snapshot;
  static const String id = '/speaker_detail';

  SpeakerDetailssScreen({this.snapshot});

  @override
  _SpeakerDetailssScreenState createState() => _SpeakerDetailssScreenState();
}

class _SpeakerDetailssScreenState extends State<SpeakerDetailssScreen> {
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
                  NetworkImage(widget.snapshot.perfil),
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
                  '${widget.snapshot.nombre} | ${widget.snapshot.nacionalidad}',
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
                  '${widget.snapshot.biografia}',
                  style: Theme.of(context).textTheme.body1,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
