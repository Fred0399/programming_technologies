// Problem 2: Keep only even numbers, double them, then sum up the results.
int sumEvenDoubled(List<int> nums) {
  var filtered = nums.where((n) => n % 2 == 0);
  var doubled = filtered.map((n) => n * 2);
  return doubled.reduce((a, b) => a + b);
}

// Problem1: Sort a list in ascending or descending order using an optional named parameter.
List<int> sortList(List<int> nums, {bool descending = false}) {
  nums.sort();
  if (descending) {
    nums = nums.reversed.toList();
  }
  return nums;
}

class Person {
  // Fields
  String name = 'Asim';
  int age = 10;

  // Constructor, Methods, etc.

  //  greet method
  void greet() {
    print("Hello, $name");
  }
}

const double xOrigin = 0;
const double yOrigin = 0;

class Point {
  final double x;
  final double y;

  // Constant constructor
  static const Point immutable = const Point(10, 0);

  // Sets the x and y instance variables
  // before the constructor body runs.
  const Point(this.x, this.y);

  // Named constructor
  Point.origin({required double newX, required double newY})
    : x = newX,
      y = newY;
}

void main() {
  var nums = [1, 2, 3, 4, 5, 6];
  print(sumEvenDoubled(nums));
  // even: 2, 4, 6 => doubled: 4, 8, 12 => sum: 24


  var numsSorted = [3, 1, 4, 2];
  print(sortList(numsSorted)); // [1, 2, 3, 4]
  print(sortList(numsSorted, descending: true)); // [4, 3, 2, 1]

  var student = Person();

  student.greet();

  var point = Point.origin(newX: 0.5, newY: 0);
  print(Point.immutable.x);
  print(point.x);
}
