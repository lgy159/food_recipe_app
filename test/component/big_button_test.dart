import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sesac_ton/presentation/components/big_button.dart';

void main() {
  testWidgets('big_button test', (tester) async {
    const String title = 'title';

    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: Center(
          child: BigButton(
            title: title,
            onTap: () {},
          ),
        ),
      ),
    );

    final titleFinder = find.text(title);
    expect(titleFinder, findsOneWidget);
  });
}
