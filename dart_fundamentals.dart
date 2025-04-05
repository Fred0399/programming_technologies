
// ==============================
// 📘 Dart Fundamentals & Syntax
// ==============================

// 1. Variable types and declarations
void variablesDemo() {
  int age = 20;
  double height = 1.75;
  bool isStudent = true;
  String name = 'Aysel';

  print('Name: $name, Age: $age, Height: $height, Student: $isStudent');
}

// 2. Function with return value and parameters
int add(int a, int b) {
  return a + b;
}

// 3. Function with optional named parameters and default values
void greetUser({String name = 'Guest'}) {
  print('Welcome, $name!');
}

// 4. Null safety with nullable types
void checkEmail(String? email) {
  print('Email is: ${email ?? "No email provided"}');
}

// 5. if-else condition example
String gradeLetter(int score) {
  if (score >= 90) return "A";
  else if (score >= 80) return "B";
  else if (score >= 70) return "C";
  else if (score >= 60) return "D";
  else return "F";
}

// 6. switch-case example
String getDayType(String day) {
  switch (day) {
    case 'Saturday':
    case 'Sunday':
      return 'Weekend';
    case 'Monday':
    case 'Tuesday':
    case 'Wednesday':
    case 'Thursday':
    case 'Friday':
      return 'Weekday';
    default:
      return 'Invalid day';
  }
}

// ====================
// 🔄 Main function
// ====================

void main() {
  variablesDemo();

  print('3 + 5 = ${add(3, 5)}');

  greetUser(); // Uses default
  greetUser(name: 'Leyla');

  checkEmail(null);
  checkEmail('user@example.com');

  print('Grade: ${gradeLetter(85)}');
  print('Friday is a ${getDayType("Friday")}');
}
