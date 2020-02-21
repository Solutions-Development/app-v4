class LinksModel {
  String certificates;
  String closure;
  String poll;

  LinksModel({this.certificates, this.closure, this.poll});

  LinksModel.fromJson(Map<String, dynamic> json) {
    certificates = json['certificates'];
    closure = json['closure'];
    poll = json['poll'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['certificates'] = this.certificates;
    data['closure'] = this.closure;
    data['poll'] = this.poll;
    return data;
  }
}