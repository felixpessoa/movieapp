import 'package:movieapp/models/movies.model.dart';
import 'package:movieapp/repositories/movies_repository.dart';

class MoviesRepositoryDecorator implements MoviesRepository {
  
  final MoviesRepository _moviesRepository;

  MoviesRepositoryDecorator(this._moviesRepository);



  @override
  Future<Movies> getMovies() async {
    return await _moviesRepository.getMovies();
  }
  
}