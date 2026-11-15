import 'package:flutter_test/flutter_test.dart';
import 'package:care_our_bike_try2/main.dart';

void main() {
  testWidgets('MovieHub app displays correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const MovieHubApp());

    expect(find.text('MOVIEHUB'), findsOneWidget);
    expect(find.text('Find Your Movie'), findsOneWidget);
    expect(find.text('Popular Movies'), findsOneWidget);
  });
}
