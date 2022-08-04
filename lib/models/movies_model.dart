import 'package:flutter/foundation.dart';

class Movie {
  double popularity;
  int voteCount;
  bool video;
  String posterPath;
  int id;
  bool adult;
  String backdropPath;
  String originalLanguage;
  String originalTitle;
  List<int> genreIds;
  String title;
  dynamic voteAverage;
  String overview;
  String releaseDate;

  Movie(
      {required this.popularity,
      required this.voteCount,
      required this.video,
      required this.posterPath,
      required this.id,
      required this.adult,
      required this.backdropPath,
      required this.originalLanguage,
      required this.originalTitle,
      required this.genreIds,
      required this.title,
      required this.voteAverage,
      required this.overview,
      required this.releaseDate});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        popularity: json['popularity'],
        voteCount: json['vote_count'],
        video: json['video'],
        posterPath: json['poster_path'],
        id: json['id'],
        adult: json['adult'],
        backdropPath: json['backdrop_path'],
        originalLanguage: json['original_language'],
        originalTitle: json['original_title'],
        genreIds: json['genre_ids'].cast<int>(),
        title: json['title'],
        voteAverage: json['vote_average'],
        overview: json['overview'],
        releaseDate: json['release_date']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['popularity'] = this.popularity;
    data['vote_count'] = this.voteCount;
    data['video'] = this.video;
    data['poster_path'] = this.posterPath;
    data['id'] = this.id;
    data['adult'] = this.adult;
    data['backdrop_path'] = this.backdropPath;
    data['original_language'] = this.originalLanguage;
    data['original_title'] = this.originalTitle;
    data['genre_ids'] = this.genreIds;
    data['title'] = this.title;
    data['vote_average'] = this.voteAverage;
    data['overview'] = this.overview;
    data['release_date'] = this.releaseDate;
    return data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Movie &&
        other.popularity == popularity &&
        other.voteCount == voteCount &&
        other.video == video &&
        other.posterPath == posterPath &&
        other.id == id &&
        other.adult == adult &&
        other.backdropPath == backdropPath &&
        other.originalLanguage == originalLanguage &&
        other.originalTitle == originalTitle &&
        listEquals(other.genreIds, genreIds) &&
        other.title == title &&
        other.voteAverage == voteAverage &&
        other.overview == overview &&
        other.releaseDate == releaseDate;
  }

  @override
  int get hashCode {
    return popularity.hashCode ^
        voteCount.hashCode ^
        video.hashCode ^
        posterPath.hashCode ^
        id.hashCode ^
        adult.hashCode ^
        backdropPath.hashCode ^
        originalLanguage.hashCode ^
        originalTitle.hashCode ^
        genreIds.hashCode ^
        title.hashCode ^
        voteAverage.hashCode ^
        overview.hashCode ^
        releaseDate.hashCode;
  }

  @override
  String toString() {
    return 'Movie(popularity: $popularity, voteCount: $voteCount, video: $video, posterPath: $posterPath, id: $id, adult: $adult, backdropPath: $backdropPath, originalLanguage: $originalLanguage, originalTitle: $originalTitle, genreIds: $genreIds, title: $title, voteAverage: $voteAverage, overview: $overview, releaseDate: $releaseDate)';
  }

  Movie copyWith({
    double? popularity,
    int? voteCount,
    bool? video,
    String? posterPath,
    int? id,
    bool? adult,
    String? backdropPath,
    String? originalLanguage,
    String? originalTitle,
    List<int>? genreIds,
    String? title,
    dynamic voteAverage,
    String? overview,
    String? releaseDate,
  }) {
    return Movie(
      popularity: this.popularity,
      voteCount : this.voteCount,
      video : this.video,
      posterPath : this.posterPath,
      id : this.id,
      adult : this.adult,
      backdropPath : this.backdropPath,
      originalLanguage : this.originalLanguage,
      originalTitle : this.originalTitle,
      genreIds : this.genreIds,
      title : this.title,
      voteAverage : this.voteAverage,
      overview : this.overview,
      releaseDate : this.releaseDate,
    );
  }
}
