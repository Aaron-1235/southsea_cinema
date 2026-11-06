import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/repositories/movie_repository.dart';

void main() {
  group('movie repository tests', () {
    test('getMovies returns mock items', () {
      final MovieRepository repository = MovieRepository();
      final List<Movie> movie = repository.getMovies();

      expect(movie.length, 2);
    });

    test('getMovies returns matching movie when id exists', () {
      final MovieRepository repository = MovieRepository();
      final Movie? movie = repository.getMovieById('the dark knight');

      expect(movie, isNotNull);
      expect(movie!.id, 'the dark knight');
      expect(movie.title, 'The Dark Knight');
    });

    test('getMovies returns null when id does not exist', () {
      final MovieRepository repository = MovieRepository();
      final Movie? movie = repository.getMovieById('non-existent');

      expect(movie, isNull);
    });
  });
}
