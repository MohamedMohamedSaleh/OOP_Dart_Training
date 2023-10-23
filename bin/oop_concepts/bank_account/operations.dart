import 'dart:io';

part 'alahly_bank.dart';
part 'egypt_bank.dart';



abstract class Operations {
  late int balance;
  late int amount;
  int withdrew();
  int charge();
  void printReceipt();
}