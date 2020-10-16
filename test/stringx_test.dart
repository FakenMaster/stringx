import 'package:stringx/stringx.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    setUp(() {});

    test('First Test', () {
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
}
