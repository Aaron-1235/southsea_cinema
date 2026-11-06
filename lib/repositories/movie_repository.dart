import 'package:southsea_cinema/models/movie.dart';

class MovieRepository {
  List<Movie> getMovies() {
    return const [
      Movie(
          id: 'the dark knight',
          title: 'The Dark Knight',
          synopsis:
              'The Dark knight folows Batman, Police Lieutenant James Gordon and District Attorney Harvey Dent as they form an alliance to dismantle organised crime in Gotham city, only to have their plans upended by the criminal known as the Joker',
          age_rating: '18',
          screening_time: 'Sunday 5th October  17:30',
          ticket_price: 7.50,
          poster_imagepath: 'assets/images/_ (1).jpeg'),
      Movie(
        id: "ocean's eleven",
        title: "Ocean's Eleven",
        synopsis:
            "Ocean's Eleven follows Danny Ocean, a charismatic thief and his partner-in-crime Rusty Ryan as they assemble a team of 11 specialist to rob money from a casino",
        age_rating: '18',
        screening_time: 'Wednesday 8th October  20:30',
        ticket_price: 7.50,
        poster_imagepath: "assets/images/Ocean's Eleven.jpeg",
      )
    ];
  }

  Movie? getMovieById(String id) {
    for (final sandwich in getMovies()) {
      if (sandwich.id == id) {
        return sandwich;
      }
    }
    return null;
  }
}
