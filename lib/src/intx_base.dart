extension IntX on int {
  static int? tryParse(Object? object, {int? defaultValue = 0}) {
    assert(defaultValue != null, 'defaultValue cannot be null.');
    if (object is int) {
      return object;
    } else {
      return int.tryParse('${object ?? defaultValue}') ?? defaultValue;
    }
  }
}
