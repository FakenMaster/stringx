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


