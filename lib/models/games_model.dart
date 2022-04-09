class GamesModel {
  String? name;
  String? status;
  String? species;
  String? image;
  String? origin;
  String? url;
  String? location;
  String? episode;

  GamesModel(
      {required this.name,
      this.status,
      this.species,
      this.origin,
      this.url,
      this.location,
      this.episode,
      this.image});

  factory GamesModel.fromJsonMap(Map<String, dynamic> json) {
    return GamesModel(
        name: json['name'],
        status: json['status'],
        species: json['species'],
        origin: json['origin'],
        url: json['url'],
        location: json['location'],
        episode: json['episode'],
        image: json['image']);
  }
}
