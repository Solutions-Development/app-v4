import 'package:congresos/api/fetch_data.dart';
import 'package:congresos/components/grid_sponsors.dart';
import 'package:congresos/components/load_scaffold_body.dart';
import 'package:congresos/models/photos.dart';
import 'package:congresos/podo/screen_arguments.dart';
import 'package:congresos/utils/strings.dart';
import 'package:congresos/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class SponsorsScreen extends StatelessWidget {
  static const String id = '/sponsors';

  @override
  Widget build(BuildContext context) {
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: LoadScaffoldBodyComponent(
        future: fetchPhotos(Client()),
        function: (List<PhotosModel> snapshot) {
          return ListView.builder(
            itemBuilder: (context, i) => StickyHeader(
                header: Container(
                  child: Text(
                    Strings.sponsors[i],
                    style: Theme.of(context).textTheme.title,
                  ),
                  padding: EdgeInsets.all(8.0),
                  color: accentColor,
                  width: double.infinity,
                ),
                content: GridSponsorsComponent.pickSponsorView(i, snapshot[0])),
            itemCount: 4,
          );
        },
      ),
    );
  }
}
