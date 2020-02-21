import 'package:flutter/material.dart';

class NoServerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Text(
            'Ha ocurrido un error en el servidor, por favor intente más tarde.',
            softWrap: true,
          ),
        ],
      ),
    );
  }
}
