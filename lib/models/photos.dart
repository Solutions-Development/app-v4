class PhotosModel {
  String map;
  List<String> sponsorsDiamond;
  List<String> sponsorsGold;
  List<String> sponsorsSilver;
  List<String> sponsorsBronze;
  List<String> gallery;

  PhotosModel(
      {this.map,
        this.sponsorsDiamond,
        this.sponsorsGold,
        this.sponsorsSilver,
        this.sponsorsBronze,
        this.gallery});

  PhotosModel.fromJson(Map<String, dynamic> json) {
    map = json['map'];
    sponsorsDiamond = json['sponsors-diamond'].cast<String>();
    sponsorsGold = json['sponsors-gold'].cast<String>();
    sponsorsSilver = json['sponsors-silver'].cast<String>();
    sponsorsBronze = json['sponsors-bronze'].cast<String>();
    gallery = json['gallery'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['map'] = this.map;
    data['sponsors-diamond'] = this.sponsorsDiamond;
    data['sponsors-gold'] = this.sponsorsGold;
    data['sponsors-silver'] = this.sponsorsSilver;
    data['sponsors-bronze'] = this.sponsorsBronze;
    data['gallery'] = this.gallery;
    return data;
  }
}
