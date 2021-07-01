class WodaModel {
  int id;
  String title;
  String description;
  String time;
  String sewaPerson;
  String cost;

  WodaModel(
      {this.id,
      this.title,
      this.description,
      this.time,
      this.sewaPerson,
      this.cost});

  factory WodaModel.fromJson(Map<String, dynamic> map) {
    return WodaModel(
        id: map['id'],
        title: map['title'],
        description: map['description'],
        time: map['time'],
        sewaPerson: map['sewa_person'],
        cost: map['cost']);
  }
}
