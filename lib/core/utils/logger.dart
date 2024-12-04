class Logger {
  static LogMode _LogMode = LogMode.debug;

  static void init(LogMode mode) {
    Logger._LogMode = mode;
  }

  static void log(dynamic data, {StackTrace? stackTrace}) {
    if (_LogMode == LogMode.debug) {
      print("ErrorL $data$stackTrace");
    }
  }
}


enum LogMode { debug, live }