import 'package:congresos/api/fetch_data.dart';
import 'package:congresos/components/load_scaffold_body.dart';
import 'package:congresos/podo/screen_arguments.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:photo_view/photo_view.dart';

class MapScreen extends StatelessWidget {
  static const String id = '/map';

  @override
  Widget build(BuildContext context) {
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: LoadScaffoldBodyComponent(
        future: fetchPhotos(Client()),
        function: (snapshot){
          return OrientationBuilder(builder: (context, orientation) {
            return orientation == Orientation.portrait
                ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.60,
                  child: PhotoView(
                    backgroundDecoration:
                    BoxDecoration(color: Colors.white),
                    minScale: PhotoViewComputedScale.contained * 1.0,
                    maxScale: PhotoViewComputedScale.contained * 1.0,
                    imageProvider: AssetImage('images/Mapa.png'),
                  ),
                ),
              ],
            )
                : PhotoView(
              backgroundDecoration:
              BoxDecoration(color: Colors.white),
              minScale: PhotoViewComputedScale.contained * 1.0,
              maxScale: PhotoViewComputedScale.contained * 1.0,
              imageProvider: AssetImage('images/Mapa.png'),
            );
          });
        },
      ),
    );
  }
}

// TODO Make asset image to network image