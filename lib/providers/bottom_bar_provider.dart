import 'package:flutter_riverpod/flutter_riverpod.dart';

final bottomBarSelectedIndexProvider = StateProvider<int>(
  (ref) {
    return 0;
  },
);
