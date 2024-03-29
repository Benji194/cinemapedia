import 'package:cinemapedia/domain/datasources/movies_datasource.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/domain/repositories/movies_repository.dart';

class  MovieRespositoryImpl extends MoviesRepository {
  final MoviesDataSource dataSource;
  MovieRespositoryImpl(this.dataSource);

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) {
    return dataSource.getNowPlaying( page: page );
  }

  
  @override
  Future<List<Movie>> getPopular({int page = 1}) {
    return dataSource.getPopular( page: page );
  }
  

  @override
  Future<List<Movie>> getTopReated({int page = 1}) {
     return dataSource.getTopReated( page: page );
  }
  
  @override
  Future<List<Movie>> getUpcoming({int page = 1}) {
     return dataSource.getUpcoming( page: page );
  }
  
  @override
  Future<Movie> getMovieById(String id) {
    return dataSource.getMovieById(id);
  }
  
  @override
  Future<List<Movie>> searchMovies(String query) {
        return dataSource.searchMovies(query);
  }
    
}