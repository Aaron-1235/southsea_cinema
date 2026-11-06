import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/views/movie_listing.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.transparent,
        margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    movie.poster_imagepath,
                    width: 100,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          movie.title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          movie.age_rating,
                          style: const TextStyle(color: cinemaBrand),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          movie.synopsis,
                          style: const TextStyle(color: cinemaFontWhite),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'BOOK TICKETS',
                          style: TextStyle(color: cinemaFontWhite),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    movie.screening_time,
                    style: const TextStyle(
                      fontSize: 16,
                      color: cinemaFontWhite,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MovieListing(movie: movie)),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: cinemaBrand,
                      foregroundColor: cinemaFontWhite,
                      shape: const RoundedRectangleBorder(),
                    ),
                    child: const Text('BOOK NOW'),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
