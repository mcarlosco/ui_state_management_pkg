import 'package:flutter/widgets.dart' hide WidgetState;
import 'package:provider/provider.dart';

import 'widget_state.dart';
import 'widget_state_manager.dart';

final class WidgetStatePartListener<State extends WidgetState, StatePart>
    extends StatelessWidget {
  final Widget Function(BuildContext context, StatePart part) builder;
  final StatePart Function(BuildContext context, State state) selector;

  const WidgetStatePartListener({
    required this.builder,
    required this.selector,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Selector<WidgetStateManager<State>, StatePart>(
      builder: (context, part, widget) {
        return builder(context, part);
      },
      selector: (context, manager) {
        return selector(context, manager.currentState);
      },
    );
  }
}
