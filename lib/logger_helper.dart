library logger_helper;

class Logger {
  // Define color escape codes
  static const String _reset = '\x1B[0m';
  static const String _infoColor = '\x1B[34m'; // Blue
  static const String _warnColor = '\x1B[33m'; // Yellow
  static const String _errorColor = '\x1B[31m'; // Red
  static const String _successColor = '\x1B[32m'; // Green

  // Log error messages
  static void error(String message, {String name = 'Logger'}) {
    print('$_errorColor[ERROR] [$_errorColor$name] $_errorColor$message');
  }

  // Log info messages
  static void info(String message, {String name = 'Logger'}) {
    print('$_infoColor[INFO][$_infoColor$name] $_infoColor$message');
  }

  // General log without color (just message)
  static void log(String message, {String name = 'Logger'}) {
    print(message + name);
  }

  // Log success messages
  static void success(String message, {String name = 'Logger'}) {
    print(
        '$_successColor[SUCCESS][$_successColor$name] $_successColor$message');
  }

  // Log warning messages
  static void warn(String message, {String name = 'Logger'}) {
    print('$_warnColor[WARNING][$_warnColor$name] $_warnColor$message');
  }
}
