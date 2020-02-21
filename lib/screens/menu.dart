import 'dart:math';

import 'package:congresos/components/pressable_card.dart';
import 'package:congresos/models/eventos_list.dart';
import 'package:congresos/podo/screen_arguments.dart';
import 'package:congresos/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../api/fetch_data.dart';
import '../components/load_scaffold_body.dart';

class MenuScreen extends StatelessWidget {
  static const String id = '/menu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoadScaffoldBodyComponent(
        future: fetchEventosList(Client()),
        function: (List<EventosList> snapshot) {

          return Column(
             children: <Widget>[
               ListView.builder(
                    itemCount: snapshot.length,
                    itemBuilder: (BuildContext context, int index) {
                      return PressableCard(
                        color: pickColor(),
                        flattenAnimation: AlwaysStoppedAnimation(0),
                        child: Stack(
                          children: [
                            Container(
                              height: 120,
                              width: 250,
                              child: Padding(
                                padding: EdgeInsets.only(top: 48.0,left: 16.0),
                                child: Text(
                                  snapshot[index].nombre,
                                  style: TextStyle(fontSize: 24),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                color: Colors.black12,
                                height: 40,
                                padding: EdgeInsets.only(left: 12),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '${snapshot[index].ciudad}, ${snapshot[index].pais}, ${snapshot[index].sede}',
                                  softWrap: true,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            HomeScreen.id,
                            arguments: ScreenArguments(title: snapshot[index].nombre),
                          );
                        },
                      );
                    }
                ),
             ],   
          );
        },
      ),
    );
  }
}

pickColor(){
  List colors = [
    Colors.blue[100],
    Colors.blue[200],
    Colors.blue[300],
    Colors.blue[400],
    Colors.blue[500],
    Colors.blue[600],
    Colors.blue[700],
    Colors.blue[800],
    Colors.blue[900],
  ];
  Random random = Random();
  return colors[random.nextInt(5)];
}