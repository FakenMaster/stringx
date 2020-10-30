extension StringX on String {
  bool isNullOrEmpty({bool trim = true}) {
    if (this == null || isEmpty) {
      return true;
    }
    return trim && this.trim().isEmpty;
  }

  bool notNullAndEmpty({bool trim = true}) {
    if (this == null || isEmpty) {
      return false;
    }
    return !trim || this.trim().isNotEmpty;
  }
}

extension ListX<E> on List<E> {
  Iterable<T> mapWithIndex<T>(T Function(int index, E value) function) {
    return asMap().entries.map((e) => function(e.key, e.value));
  }
}
