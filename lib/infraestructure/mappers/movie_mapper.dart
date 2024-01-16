import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infraestructure/models/moviedb/movie_details.dart';
import 'package:cinemapedia/infraestructure/models/moviedb/movie_moviedb.dart';

class MovieMapper {
  static Movie movieDBToEntitty(MovieMovieDB moviedb) => Movie(
      adult: moviedb.adult,
      backdropPath: (moviedb.backdropPath != '')
          ? 'https://image.tmdb.org/t/p/w500${moviedb.backdropPath}'
          : 'data:image/jpeg;base64,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',
      genreIds: moviedb.genreIds.map((e) => e.toString()).toList(),
      id: moviedb.id,
      originalLanguage: moviedb.originalLanguage,
      originalTitle: moviedb.originalTitle,
      overview: moviedb.overview,
      popularity: moviedb.popularity,
      posterPath: (moviedb.posterPath != '')
          ? 'https://image.tmdb.org/t/p/w500${moviedb.posterPath}'
          : 'no-poster',
      releaseDate: moviedb.releaseDate,
      title: moviedb.title,
      video: moviedb.video,
      voteAverage: moviedb.voteAverage,
      voteCount: moviedb.voteCount);

  static Movie movieDetailsToEntity(MovieDetails moviedb) => Movie(
      adult: moviedb.adult,
      backdropPath: (moviedb.backdropPath != '')
          ? 'https://image.tmdb.org/t/p/w500${moviedb.backdropPath}'
          : 'data:image/jpeg;base64,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',
      genreIds: moviedb.genres.map((e) => e.name).toList(),
      id: moviedb.id,
      originalLanguage: moviedb.originalLanguage,
      originalTitle: moviedb.originalTitle,
      overview: moviedb.overview,
      popularity: moviedb.popularity,
      posterPath: (moviedb.posterPath != '')
          ? 'https://image.tmdb.org/t/p/w500${moviedb.posterPath}'
          : 'data:image/jpeg;base64,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',
      releaseDate: moviedb.releaseDate,
      title: moviedb.title,
      video: moviedb.video,
      voteAverage: moviedb.voteAverage,
      voteCount: moviedb.voteCount);
}
