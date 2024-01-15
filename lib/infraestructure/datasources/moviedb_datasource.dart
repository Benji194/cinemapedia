import 'package:cinemapedia/infraestructure/mappers/movie_mapper.dart';
import 'package:cinemapedia/infraestructure/models/moviedb/moviedb_response.dart';
import 'package:dio/dio.dart';

import 'package:cinemapedia/config/constants/environment.dart';
import 'package:cinemapedia/domain/datasources/movies_datasource.dart';
import 'package:cinemapedia/domain/entities/movie.dart';

class MoviedbDatasource  extends MoviesDataSource {
    final dio = Dio( BaseOptions(
      baseUrl : 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key'  : Enviroment.theMovieDbKey , 
        'language' : 'es-MX',
      }
    )

    ) ;
  // MoviedbDatasource
  @override
  Future <List<Movie>> getNowPlaying ( {  int page = 1 }  ) async {
    final response = await dio.get('/movie/now_playing') ;
    final movieDbResponse = MovieDbResponse.fromJson( response.data );
    final List<Movie> movies = movieDbResponse.results
    .where((moviedb) => moviedb.posterPath != 'no-poster' )
    .map(
      (moviedb) => MovieMapper.movieDBToEntitty(moviedb)
    ).toList()  ;

    return  movies;
  }
}