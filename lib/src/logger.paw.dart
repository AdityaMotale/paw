import '../paw.dart';

///
/// `Paw` - A Concrete Implementation of `PawInterface` for Enhanced Logging.
///
/// This class provides a user-friendly and customizable logging experience,
/// enabling easy and formatted logging in Dart/Flutter applications.
///
/// Example:
/// ```
/// // Create a Paw logger instance with a custom title
/// final paw = Paw(title: "MyApp");
///
/// // Log different types of messages
/// paw.info("Log with some info");
/// paw.warn("A warning message");
/// paw.debug({'key': 'value'});
/// paw.error("An error occurred", error: Exception("Sample Error"));
/// ```
///
/// This class can be used directly for most logging needs in a Dart/Flutter
/// application.
///
class Paw extends PawInterface {
  ///
  /// Title of the log.
  ///
  /// This title will be included in log messages if `shouldIncludeTitle` is set to true.
  ///
  final String title;

  ///
  /// Max amount of stack traces allowed to print.
  ///
  /// This controls the number of lines from the stack trace to be included in error logs.
  ///
  final int stackTraceToPrint;

  ///
  /// Indicates whether to include the title in the log output.
  ///
  final bool shouldIncludeTitle;

  ///
  /// Indicates whether printing logs is allowed.
  ///
  /// If set to false, the logging methods will not produce any output.
  ///
  final bool shouldPrint;

  ///
  /// Indicates whether to include source file information in the logs.
  ///
  /// Useful for pinpointing the source of logs, especially during debugging.
  ///
  final bool shouldIncludeSourceFileInfo;

  ///
  /// Constructs a `Paw` logger with configurable options.
  ///
  /// Parameters:
  /// - `title`: The title for the logs. Defaults to "Paw".
  /// - `stackTraceToPrint`: The maximum number of stack trace lines to print. Defaults to 5.
  /// - `shouldIncludeTitle`: Whether to include the title in the log output. Defaults to true.
  /// - `shouldPrint`: Whether to enable log printing. Defaults to true.
  /// - `shouldIncludeSourceFileInfo`: Whether to include source file info in logs. Defaults to true.
  ///
  Paw({
    this.title = "Paw",
    this.stackTraceToPrint = 5,
    this.shouldIncludeTitle = true,
    this.shouldPrint = true,
    this.shouldIncludeSourceFileInfo = true,
  }) : super(
          name: title,
          shouldPrintLogs: shouldPrint,
          maxStackTraces: stackTraceToPrint,
          shouldIncludeSourceInfo: shouldIncludeSourceFileInfo,
          shouldPrintName: shouldIncludeTitle,
        );
}
