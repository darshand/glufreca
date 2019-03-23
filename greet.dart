import 'dart:io';

void main(){
  print('Enter your name');
  String name = stdin.readLineSync();
  greet(name);
}

void greet(String name){
  print('Welcome ${name}');
}