import 'dart:io';
import 'dart:math';

void main() {
/*   var circle = Circle(radius: 10);
  circle
    ..area()
    ..mo7it()
    ..printDetails(); */
  AlahlyBank();
}

/////////////////////////////////

//TODO: Shapes
class Circle extends Shapes {
  late double radius;
  Circle({required this.radius});
  @override
  double area() {
    return pi * pow(radius, 2);
  }

  @override
  double mo7it() {
    return 2 * pi * radius;
  }

  @override
  void printDetails() {
    print("the area of circle => ${area()} and mo7et => ${mo7it()}");
  }
}

class Rectangle implements Shapes {
  late double length;
  late double width;
  Rectangle({required this.length, required this.width});
  @override
  double area() {
    return length * width;
  }

  @override
  double mo7it() {
    return 2 * (length + width);
  }

  @override
  void printDetails() {
    print("the area of rectangle => ${area()} and mo7et => ${mo7it()}");
  }
}

class Square implements Shapes {
  late double length;
  Square({required this.length});
  @override
  area() {
    return pow(length, 2) as double;
  }

  @override
  double mo7it() {
    return length * 4;
  }

  @override
  void printDetails() {
    print("the area of square => ${area()} and mo7et => ${mo7it()}");
  }
}

abstract class Shapes {
  double area();
  double mo7it();
  void printDetails();
}
//////////////////////////////////////////

//TODO: Bank Account

class AlahlyBank extends Operations {
  AlahlyBank() {
    print("Enter your balance: ");
    balance = int.tryParse(stdin.readLineSync()!) ?? 0;
    print("Enter your amount: ");
    amount = int.tryParse(stdin.readLineSync()!) ?? 0;
    print("To Charge Enter g and to Withdrew Enter w.");
    String option = stdin.readLineSync()!;
    switch (option) {
      case "g":
        charge();
        printReceipt();
        break;
      case "w":
        withdrew();
        printReceipt();
        break;
      default:
        print("Invalid Input.");
    }
    
  }
  @override
  int charge() {
    balance += (amount - 5);
    return balance;
  }

  @override
  int withdrew() {
    balance -= (amount + 5);

    return amount;
  }

  @override
  void printReceipt() {
    print("your balance is => $balance and your amount => $amount");
  }
}

class EgyptBank extends Operations {
  EgyptBank() {
    print("Enter your balance: ");
    balance = int.tryParse(stdin.readLineSync()!) ?? 0;
    print("Enter your amount: ");
    amount = int.tryParse(stdin.readLineSync()!) ?? 0;
    print("To Charge Enter g and to Withdrew Enter w.");
    String option = stdin.readLineSync()!;
    switch (option) {
      case "g":
        charge();
        printReceipt();
        break;
      case "w":
        withdrew();
        printReceipt();
        break;
      default:
        print("Invalid Input.");
    }
    
  }
  @override
  int charge() {
    balance += (amount - 3);
    return balance;
  }

  @override
  int withdrew() {
    balance -= (amount + 3);

    return amount;
  }

  @override
  void printReceipt() {
    print("your balance is => $balance and your amount => $amount");
  }
}

abstract class Operations {
  late int balance;
  late int amount;
  int withdrew();
  int charge();
  void printReceipt();
}
