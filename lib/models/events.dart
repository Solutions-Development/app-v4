class EventsModel {
  List<Events> event;

  EventsModel({this.event});

  EventsModel.fromJson(Map<String, dynamic> json) {
    if (json['event'] != null) {
      event = new List<Events>();
      json['event'].forEach((v) {
        event.add(new Events.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.event != null) {
      data['event'] = this.event.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Events {
  String name;
  String date;
  String hour;
  String place;
  Speaker speaker;

  Events({this.name, this.date, this.hour, this.place, this.speaker});

  Events.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    date = json['date'];
    hour = json['hour'];
    place = json['place'];
    speaker =
    json['speaker'] != null ? new Speaker.fromJson(json['speaker']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['date'] = this.date;
    data['hour'] = this.hour;
    data['place'] = this.place;
    if (this.speaker != null) {
      data['speaker'] = this.speaker.toJson();
    }
    return data;
  }
}

class Speaker {
  String speakerName;
  String photo;
  String nationality;
  String cv;

  Speaker({this.speakerName, this.photo, this.nationality, this.cv});

  Speaker.fromJson(Map<String, dynamic> json) {
    speakerName = json['speaker_name'];
    photo = json['photo'];
    nationality = json['nationality'];
    cv = json['cv'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['speaker_name'] = this.speakerName;
    data['photo'] = this.photo;
    data['nationality'] = this.nationality;
    data['cv'] = this.cv;
    return data;
  }
}