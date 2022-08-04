import 'dart:convert';

import 'package:movieapp/decorators/movies_repository_decorator.dart';
import 'package:movieapp/models/movies.model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MoviesCacheRepositoryDecorator extends MoviesRepositoryDecorator{
  MoviesCacheRepositoryDecorator(super.moviesRepository);

  @override
  Future<Movies> getMovies() async {
    
    try {
    Movies movies = await super.getMovies();
    _saveInCache(movies);
    return movies;
    }
    catch(e) {
      return await _getInCache();
    }

    
  }

  _saveInCache(Movies movies) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String jsonMovies = jsonEncode(movies.toJson());
    prefs.setString('movies_cache', jsonMovies);
    print('salvou no caches os filmes'+jsonMovies);
  }

  Future<Movies> _getInCache() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var moviesJsonString = prefs.getString('movies_cache')!;
    var json = jsonDecode(moviesJsonString);
    var movies = Movies.fromJson(json);
    print('recuperou do cache os filmes'+ movies.toString());
    return movies;
  }

}