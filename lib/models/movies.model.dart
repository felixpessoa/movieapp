import 'package:flutter/foundation.dart';

import 'package:movieapp/models/movies_model.dart';

class Movies {
  int page;
  int totalResults;
  int totalPages;
  List<Movie> listMoveies;

  Movies({required this.page, required this.totalResults, required this.totalPages, required this.listMoveies});

  

  factory Movies.fromJson(Map<String, dynamic> json) {
    return Movies(
    page : json['page'],
    totalResults : json['total_results'],
    totalPages : json['total_pages'],
    // listMoveies: json['results'].map((m) => Movies.fromJson(m)).toList(),
    listMoveies: List<Movie>.from(json['results'].map((x) => Movie.fromJson(x))), 
    // json['results'].map((m) => Movies.fromJson(m)).toList(),
    );
    // void teste = if (json['results'] !: null) {
    //   var list : new List<Movies>();
    //   json['results'].forEach((v) {
    //     listMoveies.add(new Movie.fromJson(v));
    //   })
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = this.page;
    data['total_results'] = this.totalResults;
    data['total_pages'] = this.totalPages;
    if (this.listMoveies != null) {
      data['results'] = this.listMoveies.map((v) => v.toJson()).toList();
    }
    return data;
  }



  @override
  String toString() {
    return 'Movies(page: $page, totalResults: $totalResults, totalPages: $totalPages, listMoveies: $listMoveies)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Movies &&
      other.page == page &&
      other.totalResults == totalResults &&
      other.totalPages == totalPages &&
      listEquals(other.listMoveies, listMoveies);
  }

  @override
  int get hashCode {
    return page.hashCode ^
      totalResults.hashCode ^
      totalPages.hashCode ^
      listMoveies.hashCode;
  }

  Movies copyWith({
    int? page,
    int? totalResults,
    int? totalPages,
    List<Movie>? listMoveies,
  }) {
    return Movies(
      page: page ?? this.page,
      totalResults: totalResults ?? this.totalResults,
      totalPages: totalPages ?? this.totalPages,
      listMoveies: listMoveies ?? this.listMoveies,
    );
  }
}
