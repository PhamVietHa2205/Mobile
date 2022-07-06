import 'dart:io';
class Product{
  late String name;
  late int price;
  late int quality;
  late int categoryId;
  Product(this.name, this.price, this.quality, this.categoryId);
  String toString() {
    return "{name: $name, price: $price, quality: $quality, categoryId: $categoryId}";
  }
}
void main() {
  List<Product> listProduct = [	new Product('CPU', 750, 10, 1),			
	new Product('RAM', 50, 2, 2),
	new Product( 'HDD', 70, 1, 2),		
	new Product( 'Main', 400, 3, 1),			
	new Product(  'Keyboard', 30, 8, 4),
	new Product( 'Mouse', 25, 50, 4),
	new Product( 'VGA', 60, 35, 3),		
	new Product( 'Monitor', 120, 28, 2),
	new Product( 'Case', 120, 28, 5)	
	];
  //name of product need to find

  var nameProduct = stdin.readLineSync();
  findProduct(listProduct, nameProduct!);
}
void findProduct(List<Product> listProduct, String nameProduct) {
  //use a variable to determine if there is 
  //any product 
  //match nameProduct
  bool canFindProduct = false;
  //compare name of Product class
  for (int i = 0; i < listProduct.length; i++) {
    if (listProduct.elementAt(i).name == nameProduct) {
      canFindProduct = true;
      print(listProduct.elementAt(i).toString());
      break;
    }
  }
    if (canFindProduct == false) {
      print("No product named: $nameProduct");
    }
}