import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_base/main.dart' as app;

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;
  group(
    'Login test',
    () {
      testWidgets(
        "The initial screen should be the login_screen, then when the user enters incorrect data, error messages should appear, and when the user enters correct data, the home_screen should appear.",
        (WidgetTester tester) async {
          app.main();
          await tester.pumpAndSettle(
            const Duration(seconds: 5),
          );
          expect(
            find.byKey(
              const Key("sample_login_screen"),
            ),
            findsOneWidget,
          );
          await tester.tap(
            find.byKey(
              const Key("sample_continue_button"),
            ),
          );
          await tester.pumpAndSettle(
            const Duration(seconds: 3),
          );
          expect(
            find.text("This field is required"),
            findsNWidgets(2),
          );
          await tester.enterText(
            find.byKey(const Key("email_text_field")),
            "email",
          );
          await tester.pumpAndSettle(
            const Duration(
              seconds: 3,
            ),
          );
          expect(
            find.text("Enter a valid email"),
            findsOneWidget,
          );
          await tester.enterText(
            find.byKey(
              const Key("email_text_field"),
            ),
            "email@email.com",
          );
          await tester.pumpAndSettle(
            const Duration(seconds: 3),
          );
          expect(
            find.text("Enter a valid email"),
            findsNothing,
          );
          await tester.enterText(
            find.byKey(
              const Key("password_text_field"),
            ),
            "pass",
          );
          await tester.pumpAndSettle(
            const Duration(seconds: 3),
          );
          expect(
            find.text("Password must have at least 8 characters"),
            findsOneWidget,
          );
          await tester.enterText(
            find.byKey(
              const Key("password_text_field"),
            ),
            "password",
          );
          await tester.pumpAndSettle(
            const Duration(seconds: 3),
          );
          expect(
            find.text("Password must have at least 8 characters"),
            findsNothing,
          );
          expect(
            find.text("Password must have at least one number"),
            findsOneWidget,
          );
          await tester.enterText(
            find.byKey(const Key("password_text_field")),
            "password1",
          );
          await tester.pumpAndSettle(const Duration(seconds: 3));
          expect(
            find.text("Password must have at least one number"),
            findsNothing,
          );
          expect(
            find.text(
              'Password must have at least one special character (!@#\$%^&*)',
            ),
            findsOneWidget,
          );
          await tester.enterText(
            find.byKey(
              const Key("password_text_field"),
            ),
            "password1@",
          );
          await tester.pumpAndSettle(
            const Duration(seconds: 3),
          );
          expect(
            find.text(
              'Password must have at least one special character (!@#\$%^&*)',
            ),
            findsNothing,
          );
          await tester.tap(
            find.byKey(
              const Key("sample_continue_button"),
            ),
          );
          await tester.pumpAndSettle(
            const Duration(seconds: 5),
          );
          expect(
            find.byKey(
              const Key("sample_home_screen"),
            ),
            findsOneWidget,
          );
        },
      );
    },
  );
}
