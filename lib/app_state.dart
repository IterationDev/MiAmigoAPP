import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _version = 'v.1.0.0';
  String get version => _version;
  set version(String value) {
    _version = value;
  }

  final _usersManager = StreamRequestManager<List<UsersAuthRecord>>();
  Stream<List<UsersAuthRecord>> users({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<UsersAuthRecord>> Function() requestFn,
  }) =>
      _usersManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUsersCache() => _usersManager.clear();
  void clearUsersCacheKey(String? uniqueKey) =>
      _usersManager.clearRequest(uniqueKey);

  final _tutorstagManager = StreamRequestManager<TutorsAuthRecord>();
  Stream<TutorsAuthRecord> tutorstag({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<TutorsAuthRecord> Function() requestFn,
  }) =>
      _tutorstagManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearTutorstagCache() => _tutorstagManager.clear();
  void clearTutorstagCacheKey(String? uniqueKey) =>
      _tutorstagManager.clearRequest(uniqueKey);

  final _tutorsManager = StreamRequestManager<List<TutorsAuthRecord>>();
  Stream<List<TutorsAuthRecord>> tutors({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<TutorsAuthRecord>> Function() requestFn,
  }) =>
      _tutorsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearTutorsCache() => _tutorsManager.clear();
  void clearTutorsCacheKey(String? uniqueKey) =>
      _tutorsManager.clearRequest(uniqueKey);

  final _usertagManager = StreamRequestManager<UsersAuthRecord>();
  Stream<UsersAuthRecord> usertag({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<UsersAuthRecord> Function() requestFn,
  }) =>
      _usertagManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUsertagCache() => _usertagManager.clear();
  void clearUsertagCacheKey(String? uniqueKey) =>
      _usertagManager.clearRequest(uniqueKey);
}
