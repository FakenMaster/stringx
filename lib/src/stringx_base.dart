extension StringX on String {
  bool isNullOrEmpty({bool trim = true}) {
    if (isEmpty) {
      return true;
    }
    return trim && this.trim().isEmpty;
  }

  bool notNullAndEmpty({bool trim = true}) {
    if (isEmpty) {
      return false;
    }
    return !trim || this.trim().isNotEmpty;
  }
}
