import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/main.dart';
import 'package:southsea_cinema/views/home_view.dart';

void main() {
  testWidgets('Basic app loading test', (WidgetTester tester) async {
    await tester.pumpWidget(const SouthseaCinemaApp());
    expect(find.text('Welcome to Southsea Cinema'), findsOneWidget);
  });

  group('App smoke tests', () {
    testWidgets('App displays MenuScreen as home', (WidgetTester tester) async {
      await tester.pumpWidget(const SouthseaCinemaApp());
      expect(find.byType(MenuScreen), findsOneWidget);
      expect(find.text('Movies'), findsOneWidget);
    });

    testWidgets('Displays movie cards with names and prices',
        (WidgetTester tester) async {
      await tester.pumpWidget(const SouthseaCinemaApp());
      expect(find.text('The Dark Knight'), findsOneWidget);
      expect(find.text("Ocean's Eleven"), findsOneWidget);
      expect(find.text('BOOK NOW'), findsNWidgets(2));
    });
  });
}
