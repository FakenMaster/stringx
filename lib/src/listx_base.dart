extension ListX<E> on List<E> {
  Iterable<T> mapWithIndex<T>(T Function(int index, E value) function) {
    return asMap().entries.map((e) => function(e.key, e.value));
  }
}