import 'package:flutter/material.dart';

class NoInternetView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Text(
            'Por favor revise su conexión a internet.',
            softWrap: true,
          ),
        ],
      ),
    );
  }
}
