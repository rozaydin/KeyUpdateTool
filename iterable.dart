import 'dart:core';
import 'dart:io';

printMenu() {
  print("1. Update key");
  print("2. Exit");
}

void main() {
  const String version = "v0.1";
  // Welcome user
  print("Key Rotate Tool $version");
  print("------------------------");
  printMenu();
}
