class PresentationModel {
  String presentations;
  String name;

  PresentationModel({this.presentations, this.name});

  PresentationModel.fromJson(Map<String, dynamic> json) {
    presentations = json['presentations'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['presentations'] = this.presentations;
    data['name'] = this.name;
    return data;
  }
}