import 'dart:convert';

import 'package:congresos/components/home_screen_item.dart';
import 'package:congresos/components/load_scaffold_body.dart';
import 'package:congresos/models/homescreen.dart';
import 'package:congresos/podo/screen_arguments.dart';
import 'package:congresos/utils/strings.dart';
import 'package:congresos/api/fetch_data.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

//TODO remove hardcoded items
class HomeScreen extends StatelessWidget {
  static const String id = '/home';

  @override
  Widget build(BuildContext context) {
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Colors.white,
      body: LoadScaffoldBodyComponent(
        future: fetchHomeScreen(Client(),args.title),
        function: (List<HomeScreenModel> snapshot) {
          return ListView(
            children: <Widget>[
              Image.network(snapshot[11].icon),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  HomeScreenItemComponent(
                    label: snapshot[0].title,
                    image: snapshot[0].icon,
                  ),
                  HomeScreenItemComponent(
                    label: snapshot[1].title,
                    image: snapshot[1].icon,
                  ),
                  HomeScreenItemComponent(
                    label: snapshot[2].title,
                    image: snapshot[2].icon,
                    onPressed: () => Navigator.pushNamed(
                      context,
                      Strings.homeScreenItems[0],
                      arguments: ScreenArguments(title: snapshot[2].title),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  HomeScreenItemComponent(
                    label: snapshot[3].title,
                    image: snapshot[3].icon,
                    onPressed: () => Navigator.pushNamed(
                      context,
                      Strings.homeScreenItems[4],
                      arguments: ScreenArguments(
                        title: snapshot[3].title,
                        message:
                        "https://solutions.sistedeco.com/certificados/certificado1.php",
                      ),
                    ),
                  ),
                  HomeScreenItemComponent(
                    label: snapshot[4].title,
                    image: snapshot[4].icon,
                    onPressed: () => Navigator.pushNamed(
                      context,
                      Strings.homeScreenItems[1],
                      arguments: ScreenArguments(title: snapshot[4].title, message: args.title, ),
                    ),
                  ),
                  HomeScreenItemComponent(
                    label: snapshot[5].title,
                    image: snapshot[5].icon,
                    onPressed: () => Navigator.pushNamed(
                      context,
                      Strings.homeScreenItems[2],
                      arguments: ScreenArguments(title: snapshot[5].title),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  HomeScreenItemComponent(
                    label: snapshot[6].title,
                    image: snapshot[6].icon,
                    onPressed: () => Navigator.pushNamed(
                      context,
                      Strings.homeScreenItems[3],
                      arguments: ScreenArguments(title: snapshot[6].title),
                    ),
                  ),
                  HomeScreenItemComponent(
                    label: snapshot[7].title,
                    image: snapshot[7].icon,
                    onPressed: () => Navigator.pushNamed(
                      context,
                      Strings.homeScreenItems[4],
                      arguments: ScreenArguments(
                        title: snapshot[7].title,
                        message:
                            "https://docs.google.com/forms/d/e/1FAIpQLScmbMpewiIO7VCKh7rb0MfESXzjEK8TcCRsBO3P5jtcbm0KTg/viewform",
                      ),
                    ),
                  ),
                  HomeScreenItemComponent(
                    label: snapshot[8].title,
                    image: snapshot[8].icon,
                    onPressed: () => Navigator.pushNamed(
                      context,
                      Strings.homeScreenItems[5],
                      arguments: ScreenArguments(title: snapshot[8].title),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  HomeScreenItemComponent(
                    label: snapshot[9].title,
                    image: snapshot[9].icon,
                  ),
                  HomeScreenItemComponent(
                    label: snapshot[10].title,
                    image: snapshot[10].icon,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.10,
              ),
            ],
          );
        },
      ),
    );
  }
}
