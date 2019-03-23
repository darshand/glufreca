void main() {
  print(Constants.UAN);
  print(Constants.getUAN());
}

class Constants {
  static String UAN = '4GH010123';

  static String getUAN(){
    return 'UAN is ${UAN}';
  }
}