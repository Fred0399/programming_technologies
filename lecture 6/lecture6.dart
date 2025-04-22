/// 1. Inheritance
class Animal {
  String name;

  Animal(this.name);

  void move() {
    print("$name is moving");
  }
}

class Dog extends Animal {
  String breed;

  Dog(String name, this.breed) : super(name);

  void bark() {
    print("$name barks");
  }

  void describe() {
    super.move(); // Call superclass method
    print("Breed: $breed");
  }
}

/// end of 1

/// 2. Polymorphism
// class Animal {
//   void sound() => print("Some sound");
// }

// class Cat extends Animal {
//   @override
//   void sound() => print("Meow");
// }

// class Dog extends Animal {
//   @override
//   void sound() => print("Woof");
// }

/// end of 2

/// 3. Encapsulation
class BankAccount {
  double _balance = 0;

  double get balance => _balance;

  void deposit(double amount) {
    if (amount > 0) _balance += amount;
  }
}

/// end of 3

void main() {
  Dog myDog = Dog("Buddy", "Golden Retriever");
  myDog.describe();
  myDog.bark();

  //   List<Animal> animals = [Cat(), Dog()];
  //   for (var a in animals) {
  //     a.sound();
  //   }
}
