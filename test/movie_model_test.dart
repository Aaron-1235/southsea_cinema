import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/movie.dart';

void main() {
  group('Sandwich model tests', () {
    test('creates movie instance with given properties', () {
      const movie = Movie(
        id: 'the dark knight',
        title: 'The Dark Knight',
        synopsis:
            'The Dark knight folows Batman, Police Lieutenant James Gordon and District Attorney Harvey Dent as they form an alliance to dismantle organised crime in Gotham city, only to have their plans upended by the criminal known as the Joker',
        ageRating: '18',
        screeningTime: 'Sunday 5th October  17:30',
        ticketPrice: 7.50,
        posterImagepath: 'assets/images/_ (1).jpeg',
      );

      expect(movie.id, 'the dark knight');
      expect(movie.title, 'The Dark Knight');
      expect(movie.synopsis,
          'The Dark knight folows Batman, Police Lieutenant James Gordon and District Attorney Harvey Dent as they form an alliance to dismantle organised crime in Gotham city, only to have their plans upended by the criminal known as the Joker');
      expect(movie.ageRating, '18');
      expect(movie.screeningTime, 'Sunday 5th October  17:30');
      expect(movie.ticketPrice, 7.50);
      expect(movie.posterImagepath, 'assets/images/_ (1).jpeg');
    });

    test(
        'formatted price formattedPrice shows two decimals for a price with pence',
        () {
      const movie = Movie(
          id: "ocean's eleven",
          title: "Ocean's Eleven",
          synopsis:
              "Ocean's Eleven follows Danny Ocean, a charismatic thief and his partner-in-crime Rusty Ryan as they assemble a team of 11 specialist to rob money from a casino",
          ageRating: '18',
          screeningTime: 'Wednesday 8th October  20:30',
          ticketPrice: 7.5,
          posterImagepath: "assets/images/Ocean's Eleven.jpeg");

      expect(movie.formattedPrice, '£7.50');
    });

    test(
        'formatted priceformattedPrice shows two decimals for a whole-pound price',
        () {
      const movie = Movie(
          id: "ocean's eleven",
          title: "Ocean's Eleven",
          synopsis:
              "Ocean's Eleven follows Danny Ocean, a charismatic thief and his partner-in-crime Rusty Ryan as they assemble a team of 11 specialist to rob money from a casino",
          ageRating: '18',
          screeningTime: 'Wednesday 8th October  20:30',
          ticketPrice: 6,
          posterImagepath: "assets/images/Ocean's Eleven.jpeg");

      expect(movie.formattedPrice, '£6.00');
    });
  });
}
