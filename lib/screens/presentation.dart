import 'package:congresos/api/fetch_data.dart';
import 'package:congresos/components/load_scaffold_body.dart';
import 'package:congresos/models/presentation.dart';
import 'package:congresos/podo/screen_arguments.dart';
import 'package:congresos/screens/links.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class PresentationsScreen extends StatelessWidget {
  static const String id = '/presentations';

  @override
  Widget build(BuildContext context) {
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: LoadScaffoldBodyComponent(
        future: fetchPresentations(Client()),
        function: (List<PresentationModel> snapshot) {
          return ListView(children: buildPresentations(snapshot,context));
        },
      ),
    );
  }
}

List<Widget> buildPresentations(List<PresentationModel> snapshot, context) {
  List<Widget> list = [];
  for (int i = 0; i < snapshot.length; i++) {
    list.add(Padding(
      padding: const EdgeInsets.all(16.0),
      child: RaisedButton(
        onPressed: () => Navigator.pushNamed(
          context,
          LinksScreen.id,
          arguments: ScreenArguments(
            title: snapshot[i].name,
            message: snapshot[i].presentations,
          ),
        ),
        child: Text(
          snapshot[i].name,
          style: Theme.of(context).textTheme.button,
        ),
      ),
    ));
  }
  return list;
}
