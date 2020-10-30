import 'package:stringx/stringx.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    setUp(() {});

    test('StringX Test', () {
      expect(null.isNullOrEmpty(), isTrue);
      expect(null.notNullAndEmpty(), isFalse);

      final empty = '';
      expect(empty.isNullOrEmpty(), isTrue);
      expect(empty.notNullAndEmpty(), isFalse);

      final trimEmpty = '  ';
      expect(trimEmpty.isNullOrEmpty(), isTrue);
      expect(trimEmpty.isNullOrEmpty(trim: false), isFalse);

      expect(trimEmpty.notNullAndEmpty(), isFalse);
      expect(trimEmpty.notNullAndEmpty(trim: false), isTrue);

      final test = 'test';
      expect(test.isNullOrEmpty(), isFalse);
      expect(test.notNullAndEmpty(), isTrue);
    });
  });

  test('ListX test', () {
    expect([1, 2, 3].mapWithIndex((index, value) => '$index+$value'),
        ['0+1', '1+2', '2+3']);
  });

  test('IntX test', () {
    expect(IntX.tryParse(12), 12);
    expect(IntX.tryParse(null,defaultValue: 12), 12);
    expect(IntX.tryParse('12'), 12);
    expect(IntX.tryParse('what',defaultValue: 12), 12);
    expect(IntX.tryParse(ObjectToString(12)), 12);
  });
}

class ObjectToString {
  final int value;

  ObjectToString(this.value);

  @override
  String toString() {
    return '$value';
  }
}
