import 'dart:convert';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:image_ink_well/image_ink_well.dart';
import 'package:flutter/material.dart';

class HomeScreenItemComponent extends StatelessWidget {
  final String label;
  final Function onPressed;
  final double betweenHeight;
  final String image;

  HomeScreenItemComponent({
    this.label,
    this.onPressed,
    this.betweenHeight = 12.0,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ImageInkWell(
          onPressed: onPressed,
          width: 48,
          height: 48,
          image: MemoryImage(base64Decode(image)),
          splashColor: Colors.white70,
        ),
        SizedBox(height: betweenHeight),
        Container(
          width: MediaQuery.of(context).size.width * 0.28,
          child: AutoSizeText.rich(
            TextSpan(text: label),
            textAlign: TextAlign.center,
            minFontSize: 10,
            maxLines: 3,
            wrapWords: false,
          ),
        )
      ],
    );
  }
}
