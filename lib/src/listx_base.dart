import 'dart:math';

extension ListX<E> on List<E> {
  Iterable<T> mapWithIndex<T>(T Function(int index, E value) function) {
    return asMap().entries.map((e) => function(e.key, e.value));
  }

  int get listSize {
    if (this == null) {
      return 0;
    }
    return length;
  }

  bool get listEmpty {
    return listSize == 0;
  }

  bool get listNotEmpty {
    return listSize > 0;
  }

  static List<T?> copyList<T>(List<T>? source, [int? len]) {
    final listLength = len ?? source?.length ?? 0;

    /// can't omit the type, else the type will infer to List<Null> instead of List<T>
    final target = List<T?>.filled(listLength, null);
    if (source != null && source.listNotEmpty) {
      final iterateLength = min(listLength, source.length);
      for (var i = 0; i < iterateLength; i++) {
        target[i] = source[i];
      }
    }
    return target;
  }
}
