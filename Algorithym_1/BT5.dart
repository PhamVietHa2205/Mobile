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
  //categoryId of products need to find
  var categoryId = stdin.readLineSync();
  findProductByCategory(listProduct, int.parse(categoryId!));
}
void findProductByCategory(List<Product> listProduct, int categoryId) {
  late List<Product> newProductList = [];
  //compare categoryId of Product class
  for (int i = 0; i < listProduct.length; i++) {
    if (listProduct.elementAt(i).categoryId == categoryId) {
      newProductList.add(listProduct.elementAt(i));
    }
  }
  if (newProductList.length > 0) {
    for (int i = 0; i < newProductList.length; i++) {
      print(newProductList.elementAt(i).toString());
    }
  } else {
    print("No product with categoryId: $categoryId");
  }
}