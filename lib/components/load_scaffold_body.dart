import 'dart:async';

import 'package:congresos/widgets/no_internet_view.dart';
import 'package:congresos/widgets/no_server_view.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

class LoadScaffoldBodyComponent extends StatefulWidget {
  final Future future;
  final Function function;

  LoadScaffoldBodyComponent({this.future, @required this.function});

  @override
  _LoadScaffoldBodyComponentState createState() => _LoadScaffoldBodyComponentState();
}

class _LoadScaffoldBodyComponentState extends State<LoadScaffoldBodyComponent> {
  StreamSubscription<ConnectivityResult> subscription;

  bool isInternetActive = true;

  @override
  void initState() {
    super.initState();
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      if (result == ConnectivityResult.wifi ||
          result == ConnectivityResult.mobile) {
        setState(() {
          isInternetActive = true;
        });
      }
      if (result == ConnectivityResult.none) {
        setState(() {
          isInternetActive = false;
        });
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
    return isInternetActive
        ? Center(
            child: FutureBuilder(
                future: widget.future,
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    print("Error = ${snapshot.error}");
                    return NoServerView();
                  }
                  if (snapshot.connectionState == ConnectionState.done) {
                    return widget.function(snapshot.data);
                  } else {
                    return CircularProgressIndicator();
                  }
                }),
          )
        : Center(child: NoInternetView());
  }
}
