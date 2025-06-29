import 'dart:math';
import 'package:dart_collections_journey/names.dart';
void main() {
  runTask1();
}
void runTask1() {
  print('------------------- Task 1 -------------------');

  final random = Random();
  final numbers = List.generate(100, (index) => random.nextInt(101));

  print(numbers);

  print('65-й елемент: ${numbers[64]}');

  numbers.insert(49, 1000000000);

  numbers.removeWhere((n) => n == 24 || n == 45 || n == 66 || n == 88);

  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 3 == 0) {
      sum += numbers[i];
    }
  }
  print('Сума чисел, що діляться на 3: $sum');

  List<int> temp = [];
  for (var n in numbers) {
    if (n % 2 == 0) {
      temp.add(n);
    }
  }
  print('Кількість парних чисел у списку temp: ${temp.length}');
} 
void runTask2 () {
  print('------------------- Task 2 -------------------');

   Set<String> uniqueNames1 = Set.from(ukrainianNames1);
   Set<String> uniqueNames2 = Set.from(ukrainianNames2);

   Set<String> commonNames = uniqueNames1.intersection(uniqueNames2);
   print('Кількість спільних імен: ${commonNames.length}');   

   Set<String> onlyInFirst = uniqueNames1.difference(uniqueNames2);
   print('Тільки в першому списку: $onlyInFirst');

   Set<String> onlyInSecond = uniqueNames2.difference(uniqueNames1);
   print('Тільки в другому списку: $onlyInSecond');
   import 'package:word_generator/word_generator.dart';

void main() {
  final wordGenerator = WordGenerator();
  
  final List<String> nounsList = wordGenerator.randomNouns(50);
  print('nounsList: $nounsList');

  final Map<String, int> nounsMap = {
    for (var word in nounsList) word: word.length
  };
  print('nounsMap: $nounsMap');

  final Map<String, int> tempNouns = {
    for (var entry in nounsMap.entries)
      if (entry.value % 2 == 0) entry.key: entry.value
  };
  print('Слова з парною довжиною:');
  tempNouns.keys.forEach(print);
}