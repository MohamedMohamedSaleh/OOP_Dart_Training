part of 'operations.dart';


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