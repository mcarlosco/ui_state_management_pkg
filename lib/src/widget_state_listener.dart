import 'package:flutter/widgets.dart' hide WidgetState;
import 'package:provider/provider.dart';

import 'widget_state.dart';
import 'widget_state_manager.dart';

final class WidgetStateListener<State extends WidgetState>
    extends StatelessWidget {
  final Widget Function(BuildContext context, State state) builder;

  const WidgetStateListener({
    required this.builder,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<WidgetStateManager<State>>(
      builder: (context, manager, widget) {
        return builder(context, manager.currentState);
      },
    );
  }
}
