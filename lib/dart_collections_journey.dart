import 'dart:math';
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
} //