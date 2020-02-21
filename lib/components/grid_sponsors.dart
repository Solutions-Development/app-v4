import 'dart:convert';

import 'package:congresos/models/photos.dart';
import 'package:flutter/material.dart';

class GridSponsorsComponent extends StatelessWidget {
  final List data;
  GridSponsorsComponent(this.data);
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(data.length, (index) {
        return Padding(
          padding: EdgeInsets.all(12.0),
          child: Image.memory(
            base64Decode(data[index]),
          ),
        );
      }),
      shrinkWrap: true,
      physics: ScrollPhysics(),
    );
  }

  //TODO Make SponsorsGridView not hardcoded
  static GridSponsorsComponent pickSponsorView(int index, PhotosModel data){
    switch(index){
      case 0:
        return GridSponsorsComponent(data.sponsorsDiamond);
      case 1:
        return GridSponsorsComponent(data.sponsorsGold);
      case 2:
        return GridSponsorsComponent(data.sponsorsSilver);
      case 3:
        return GridSponsorsComponent(data.sponsorsBronze);
      default:
        return null;
    }
  }
}

