class HomeScreenModel {
  String title;
  String icon;

  HomeScreenModel({this.title, this.icon});

  HomeScreenModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['icon'] = this.icon;
    return data;
  }
}