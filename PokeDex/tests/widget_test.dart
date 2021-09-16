import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:project/home/home_page.dart';

Future<void> _createWidget(WidgetTester tester) async {
  await tester.pumpWidget(GetCupertinoApp(
    home: HomePage(),
  ));
  await tester.pump();
}

void main() {
  testWidgets('test', (WidgetTester tester) async {
    await _createWidget(tester);

    expect(find.text('See your pokemons'), findsOneWidget);
    expect(find.byType(CupertinoButton), findsOneWidget);
  });
}
