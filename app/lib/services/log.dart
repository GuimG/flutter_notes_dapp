import 'package:flutter/foundation.dart';

enum LogLevel {
  none,
  error,
  warn,
  info,
  debug,
  trace,
}

class LogEntry {
  final int idx;
  final DateTime dt;
  final String line;

  LogEntry(this.idx, this.dt, this.line);
}

class LogService {
  LogLevel level;
  String? _context;
  LogService? _parent;
  final List<LogEntry> _entries = <LogEntry>[];
  int _entriesSinceCleanup = 0;
  int _lastEntryIndex = 0;

  LogService(this.level);

  factory LogService._(LogLevel level, String context, LogService parent) {
    return LogService(level)
      .._context = context
      .._parent = parent;
  }

  factory LogService.fromLevelString(String? levelStr) {
    var level = LogLevel.info;

    if (levelStr != null) {
      level = LogLevel.values.firstWhere((e) => e.toString() == 'LogLevel.$levelStr', orElse: () => level);
    }

    return LogService(level);
  }

  void trace(String message) => _log(message, LogLevel.trace);

  void debug(String message) => _log(message, LogLevel.debug);

  void info(String message) => _log(message, LogLevel.info);

  void warn(String message) => _log(message, LogLevel.warn);

  void error(String message) => _log(message, LogLevel.error);

  LogService fork(String context) => LogService._(level, context, this);

  List<LogEntry> getRecentEntries({DateTime? since}) {
    if (_parent != null) {
      return _parent!.getRecentEntries(since: since);
    }

    Iterable<LogEntry> it = _entries;
    if (since != null) {
      it = it.where((element) => element.dt.isAfter(since));
    }

    return it.toList();
  }

  void _log(String message, LogLevel level) {
    if (this.level.index < level.index) {
      return;
    }

    var levelStr = _logLevelString(level);
    var logTime = DateTime.now();
    var prefix = "${logTime.toIso8601String()} [$levelStr] ";

    if (_context != null) {
      prefix += "$_context - ";
    }

    var logLine = "$prefix $message";
    if (kDebugMode) {
      print(logLine);
    }

    _saveEntry(logTime, logLine);
  }

  void _saveEntry(DateTime logTime, String logLine) {
    if (_parent != null) {
      return _parent!._saveEntry(logTime, logLine);
    }

    _lastEntryIndex += 1;
    var entry = LogEntry(_lastEntryIndex, logTime, logLine);

    _entries.add(entry);

    if (++_entriesSinceCleanup >= 25) {
      _cleanUpEntries();
    }
  }

  static const targetMaxEntries = 100;
  void _cleanUpEntries() {
    var startingEntries = _entries.length;
    if (startingEntries > targetMaxEntries) {
      final deleteBeforeIdx = _lastEntryIndex - targetMaxEntries;
      final deleteBeforeTime = DateTime.now().subtract(const Duration(seconds: 180));
      _entries.removeWhere((element) => element.dt.isBefore(deleteBeforeTime) && element.idx < deleteBeforeIdx);
    }

    _entriesSinceCleanup = 0;

    if (kDebugMode) {
      var removed = startingEntries - _entries.length;
      print('Log cleanup: removed $removed, remaining: ${_entries.length}');
    }
  }
}

String _logLevelString(LogLevel level) {
  switch (level) {
    case LogLevel.none:
      return "";
    case LogLevel.error:
      return "ERR";
    case LogLevel.warn:
      return "WRN";
    case LogLevel.info:
      return "INF";
    case LogLevel.debug:
      return "DBG";
    case LogLevel.trace:
      return "TRC";
  }
}
