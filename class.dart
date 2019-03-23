void main(){
  Chocolate my_chocolate = new Chocolate(color:'dark', name:'silk', price: 120, shape: 'bar');

  my_chocolate.printChocolate();
}

class Chocolate{
  String color;
  String name;
  int price;
  String shape;

  Chocolate({this.color, this.name, this.price, this.shape});

  void printChocolate(){
    print("Chocolat name is ${this.name} of price ${this.price}");
  }
} 