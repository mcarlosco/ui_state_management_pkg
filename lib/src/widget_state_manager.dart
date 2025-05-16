import 'package:flutter/foundation.dart';

import 'widget_event_handler.dart';
import 'widget_state.dart';

base class WidgetStateManager<State extends WidgetState> extends ChangeNotifier
    implements WidgetEventHandler {
  final State initialState;

  State _state;

  WidgetStateManager({
    required this.initialState,
  }) : _state = initialState;

  State get currentState => _state;

  set _currentState(State state) {
    if (_state != state) {
      _state = state;
      notifyListeners();
    }
  }

  void changeState(State state) {
    _currentState = state;
  }

  void resetState() {
    changeState(initialState);
  }
}
