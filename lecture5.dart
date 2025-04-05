abstract class Vehicle {
  void start();

  final int weight;

  Vehicle({required this.weight});
}

class Bike extends Vehicle {
  Bike({required super.weight});

  @override
  void start() {
    print('rolling into deep');
  }
}

class CarWithImpl implements Vehicle {
  @override
  void start() {
    // TODO: implement start
  }

  @override
  int get weight => throw UnimplementedError();
}

abstract class Animal {
  void makeSound(); // Abstract method
}

/// More realistic example of using abstract classes;
abstract class Payment {
  double amount;
  // Generative constructor;
  Payment(this.amount);

  void processPayment(); // Abstract method
}

class CreditCardPayment extends Payment {
  String cardNumber;

  CreditCardPayment(double amount, this.cardNumber) : super(amount);

  @override
  void processPayment() {
    print("Processing Credit Card payment of \$${amount} using card $cardNumber");
  }
}

class PayPalPayment extends Payment {
  String email;

  PayPalPayment(double amount, this.email) : super(amount);

  @override
  void processPayment() {
    print("Processing PayPal payment of \$${amount} from $email");
  }
}

void main() {
  var creditCardPay = CreditCardPayment(110, '416973880000000');
  var payPalPay = PayPalPayment(110, 'myacc@asoiu.edu.az');

  creditCardPay.processPayment();
  payPalPay.processPayment();
//   var myBike = Bike(weight: 4);
//   myBike.start();
//   print(myBike.weight);
}

mixin CanFly {
  void fly() {
    print("Flying...");
  }
}

class User with AgeCalculation {
  final int birthYear;

  User(this.birthYear);

  void calculateAndPrint() {
    print(calculateAge(birthYear));
  }
}

mixin AgeCalculation {
  int calculateAge(int yearOfBirth) {
    int currYear = 2025;
    return currYear - yearOfBirth;
  }
}

class Jet with CanFly {
  void printD() {
    fly();
  }
}

class Bird extends Animal with CanFly {
  @override
  void makeSound() {
    fly();

    print("Chirp Chirp ");
  }
}
