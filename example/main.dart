import 'package:paw/paw.dart';

///
/// This is an example showcasing how to use the Paw logging library in Flutter.
/// You can run this example by executing `dart example/main.dart` in your terminal.
///
void main() {
  ///
  /// Create an instance of [paw] with custom configurations. This is how you interact with
  /// the logging system.
  ///
  final paw = Paw(
    title: "MyApp",
    shouldIncludeSourceFileInfo: true,
    shouldIncludeTitle: true,
    shouldPrint: true,
    stackTraceToPrint: 5,
  );

  ///
  /// Log an informational message.
  ///
  /// Use this for general app flow information, which could be helpful for
  /// understanding the app's behavior.
  ///
  paw.info("This is an informational message");

  ///
  /// Log a warning message.
  /// Warnings are useful for non-critical issues that should be
  /// brought to attention.
  ///
  paw.warn("Be aware! This is a warning message");

  ///
  /// Log a data object for debugging.
  ///
  /// This is particularly useful for logging structured data, making it
  /// easier to understand complex data states.
  ///
  paw.debug({'key': 'value', 'count': 42});

  ///
  /// Log an error with additional context.
  /// Here you can pass a message, an error object, and even a stack trace
  /// for in-depth debugging.
  ///
  /// Use this for logging exceptions or errors that occur in your application.
  ///
  try {
    throw UnsupportedError("Oops! You've forgotten to implement this feature");
  } catch (e, stackTrace) {
    // Log an error with a message, error object, and stack trace
    paw.error(
      'An unexpected error occurred',
      stackTrace: stackTrace,
      error: UnsupportedError(
        "Oops! You've forgotten to implement this feature",
      ),
    );
  }
}
