library logger_helper;

import 'dart:developer' as developer;

class Logger {
  // Define color escape codes
  static const String _reset = '\x1B[0m';
  static const String _infoColor = '\x1B[34m'; // Blue
  static const String _warnColor = '\x1B[33m'; // Yellow
  static const String _errorColor = '\x1B[31m'; // Red
  static const String _successColor = '\x1B[32m'; // Green

  // Log error messages
  static void error(String message, {String name = 'Logger'}) {
    developer.log('$_errorColor[ERROR] $_errorColor$message',
        name: '$_errorColor$name');
  }

  // Log info messages
  static void info(String message, {String name = 'Logger'}) {
    developer.log('$_infoColor[INFO] $_infoColor$message',
        name: '$_infoColor$name');
  }

  // General log without color (just message)
  static void log(String message, {String name = 'Logger'}) {
    developer.log(message, name: name);
  }

  // Log success messages
  static void success(String message, {String name = 'Logger'}) {
    developer.log('$_successColor[SUCCESS] $_successColor$message',
        name: '$_successColor$name');
  }

  // Log warning messages
  static void warn(String message, {String name = 'Logger'}) {
    developer.log('$_warnColor[WARNING] $_warnColor$message',
        name: '$_warnColor$name');
  }
}
