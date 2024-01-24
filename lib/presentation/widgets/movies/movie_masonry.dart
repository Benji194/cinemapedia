import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart'; 

class MovieMansonry extends StatefulWidget {

  final List<Movie> movies ;
  final VoidCallback ? loadNextPage ;

  const MovieMansonry({
    super.key,
    required this.movies,
    this.loadNextPage
    
  });

  @override
  State<MovieMansonry> createState() => _MovieMansonryState();
}

class _MovieMansonryState extends State<MovieMansonry> {

  // todo Initstate

  // todo dispose

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 10 ),
      child: MasonryGridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        itemCount: widget.movies.length,
        itemBuilder: (context, index) {
          if (index ==1) {
            return Column(
              children: [
                const SizedBox(height: 20,),
                MoviePosterLink( movie : widget.movies[index] ) ,
              ],
            );
          }
          return MoviePosterLink( movie : widget.movies[index] ) ;
        },
      ),
    );
  }
}