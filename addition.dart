import 'dart:io';

void main(){
  print('Enter first name');
  String a = stdin.readLineSync();
  print('Enter second name');
  String b = stdin.readLineSync();
  String c = add(first:b, last:a);
  print('Sum = $c');
}

String add({String first, String last}){
  // int num1 = int.parse(c);
  // int num2 = int.parse(d);
  return  first + last;
  // return sum;
}