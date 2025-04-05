
// ================================
// ✅ List Transformations Examples
// ================================

void doubleNumbers() {
  List<int> nums = [1, 2, 3, 4];
  var doubled = nums.map((n) => n * 2).toList();
  print(doubled); // [2, 4, 6, 8]
}

void filterNumbers() {
  List<int> nums = [2, 4, 6, 8, 10];
  var filtered = nums.where((n) => n >= 5).toList();
  print(filtered); // [6, 8, 10]
}

void sumWithReduce() {
  List<int> nums = [1, 2, 3, 4];
  var sum = nums.reduce((a, b) => a + b);
  print(sum); // 10
}

void productWithFold() {
  List<int> nums = [2, 3, 4];
  var product = nums.fold(1, (a, b) => a * b);
  print(product); // 24
}

// =====================
// 🔁 Loops Examples
// =====================

void countToFive() {
  for (int i = 1; i <= 5; i++) {
    print(i);
  }
}

void printNames() {
  List<String> names = ['Ali', 'Leyla', 'Nihad'];
  names.forEach((name) {
    print('Hello, $name');
  });
}

void countdown() {
  int n = 3;
  while (n > 0) {
    print(n);
    n--;
  }
  print('Go!');
}

// ==============================
// 🧠 Higher-Order Functions
// ==============================

void applyFunction(List<int> list, int Function(int) action) {
  var result = list.map(action).toList();
  print(result);
}

int square(int x) => x * x;

void testApplyFunction() {
  applyFunction([1, 2, 3], square); // [1, 4, 9]
}

Function makeMultiplier(int factor) {
  return (int x) => x * factor;
}

void useMultiplier() {
  var triple = makeMultiplier(3);
  print(triple(5)); // 15
}

// ====================
// 🔄 Main function
// ====================

void main() {
  doubleNumbers();
  filterNumbers();
  sumWithReduce();
  productWithFold();
  
  countToFive();
  printNames();
  countdown();
  
  testApplyFunction();
  useMultiplier();
}
