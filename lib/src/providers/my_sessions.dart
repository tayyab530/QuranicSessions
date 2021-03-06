import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:quranic_session/src/models/session_model.dart';

class MySessions with ChangeNotifier {
  List<SessionItem> _mySession = [
    SessionItem(
      id: 's4',
      title: 'Isale Sawaab',
      remaining: Random().nextInt(30) + 1,
      issueTime: DateTime.now(),
    )
  ];

  List<SessionItem> get mySession => _mySession;

  void addSession(SessionItem session) {
    _mySession.add(session);
    notifyListeners();
  }
}
