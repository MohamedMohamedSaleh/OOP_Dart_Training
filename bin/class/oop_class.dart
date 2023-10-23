import 'dart:io';
import 'dart:math';



main() {
 
/*   List<Cars> carDetails = [];
  print("Enter Details of Cars");
  while (true) {
    var car = Cars();
    if (car.isclose()) {
      break;
    }
    carDetails.add(car);
  }
  for (Cars c in carDetails) {
    c.printDetails();
  } */

  // print(pow(27, 1 / 3));

  // Circle()..areaOfCircle()..mo7itOfCircle();
}

/////////////////////////////////

//TODO: User Class
class User {
  late String name, address;
  late int age;
  late List<String> friends = [];

// There are Default constructor, Because i didn't create any one.

  void takeUserDetails() {
    stdout.write("Enter your name: ");
    name = stdin.readLineSync() ?? "";

    stdout.write("Enter your address: ");
    address = stdin.readLineSync() ?? "";

    stdout.write("Enter your age: ");
    age = int.tryParse(stdin.readLineSync()!) ?? 0;

    stdout.write("Enter your friends: ");
    //Enter List Of String of 5 Friends
    for (int i = 1; i <= 5; i++) {
      String friend = stdin.readLineSync() ?? "";
      friends.add(friend);
    }
  }

  void printUserDetails() {
    print("your name: $name");
    print("your addres: $address");
    print("your age: $age");
    stdout.write("your friends: ");
    for (var friend in friends) {
      stdout.write("$friend ");
    }
  }
}

/////////////////////////////////

//TODO: BankAccount Class

class BankAccount {
  late int passAccount;
  late int balace;
  late String operation;
  late int amount;


  BankAccount() {
    stdout.write("Enter your Account: ");
    passAccount = int.tryParse(stdin.readLineSync()!) ?? 0;

    stdout.write("Enter your balace: ");
    balace = int.tryParse(stdin.readLineSync()!)?? 0;
    operations();
    printData();
  }

  void operations() {
    stdout.write("for charge enter 'c' and for withdraw enter 'w': ");
    operation = stdin.readLineSync() ?? "";
    if (['c', 'w'].contains(operation.toLowerCase())) {
      stdout.write("Enter amount: ");
      amount = int.tryParse(stdin.readLineSync()!) ?? 0;
    }

    if (operation == 'c') {
      balace += amount;
    } else if (operation == 'w') {
      balace -= amount;
    } else {
      print("Please Enter Invalid Char!");
    }
  }

  void printData() {
    if (['c', 'w'].contains(operation.toLowerCase())) {
      print("\n*********************\nyour Account: $passAccount ");
      print("your balace: $balace");
    }
  }
}

/////////////////////////////////

//TODO: Cars Class

class Cars {
  late String name, model, color;
  late int price, id;
  late int numOfCars;

  bool isclose() {
    return ['close', 'exit', 'end'].contains(name.toLowerCase());
  }

  Cars() {
    stdout.write("************\nEnter name of car: ");
    name = stdin.readLineSync()!;
    if (!isclose()) {
      stdout.write("Enter id of car: ");
      id = int.tryParse(stdin.readLineSync()!) ?? 0;

      stdout.write("Enter price of car: ");
      price = int.tryParse(stdin.readLineSync()!) ?? 0;

      stdout.write("Enter model of car: ");
      model = stdin.readLineSync()!;

      stdout.write("Enter color of car: ");
      color = stdin.readLineSync()!;
      stdout.write("\nfor finish enter close or exit or end in name of car.\n");
    }
  }

  void printDetails() {
    print("\n****************\nname of car: $name");
    print("id of car: $id");
    print("price of car: $price");
    print("model of car: $model");
    print("color of car: $color");
  }
}

/////////////////////////////////

//TODO: Circle Class.
class Circle {
  late double radius;

  Circle() {
    print("Enter Raduis: ");
    radius = double.tryParse(stdin.readLineSync()!) ?? 0;
  }

  void areaOfCircle() {
    print("area of circle: ${(pi * pow(radius, 2)).round()}");
  }

  void mo7itOfCircle() {
    print("mo7it of cincle: ${(2 * pi * radius).round()}");
  }
}
