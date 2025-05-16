import 'package:flutter/widgets.dart' hide WidgetState;
import 'package:provider/provider.dart';

import 'widget_event_handler.dart';
import 'widget_state.dart';
import 'widget_state_manager.dart';

final class WidgetEventTrigger<EventHandler extends WidgetEventHandler,
    State extends WidgetState> extends StatelessWidget {
  final Widget Function(BuildContext context, EventHandler handler) builder;

  const WidgetEventTrigger({
    required this.builder,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return builder(
      context,
      Provider.of<WidgetStateManager<State>>(context, listen: false)
          as EventHandler,
    );
  }
}
