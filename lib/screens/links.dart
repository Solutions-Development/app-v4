import 'package:congresos/podo/screen_arguments.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LinksScreen extends StatelessWidget {
  static const String id = '/links';
  @override
  Widget build(BuildContext context) {
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: WebView(
        initialUrl: args.message,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
