import 'package:provider/provider.dart';

import 'widget_state.dart';
import 'widget_state_manager.dart';

final class WidgetStateManagerProvider<State extends WidgetState>
    extends ChangeNotifierProvider<WidgetStateManager<State>> {
  WidgetStateManagerProvider({
    super.key,
    required super.create,
    super.lazy,
  });
}
