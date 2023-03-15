import 'package:logger/logger.dart';

class Log {
  // static final Logger _logger = Logger(
  // printer: PrettyPrinter(
  //     methodCount: 1,
  //     lineLength: 50,
  //     errorMethodCount: 3,
  //     colors: true,
  //     printEmojis: true));

  static final Logger _logger = Logger(printer: PrettyPrinter(methodCount: 0));

  /// `View file to view format at the top`
  static void info(dynamic log, {dynamic title}) {
    _logger.i(
      log,
      title,
    );
  }

  static void debug(dynamic message, {dynamic title}) {
    _logger.d(message, title);
  }

  static void error(dynamic message, {dynamic error}) {
    _logger.e(message, error);
  }

  static void verbose(dynamic message, {dynamic title}) {
    _logger.v(message, title);
  }

  static void warning(dynamic message, {dynamic title}) {
    _logger.w(message, title);
  }

  /// `View file to view format at the top`
  static void wtf(dynamic message, {dynamic error}) {
    _logger.wtf(message, error);
  }
}
