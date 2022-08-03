import 'package:movieapp/models/movies.model.dart';

abstract class MoviesRepository {

  Future<Movies> getMovies();
}