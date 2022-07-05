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

  sortByPrice(listProduct);
}

void sortByPrice(List<Product> listProduct) {
  //sort by bubble method
  for (int i = 0; i < listProduct.length - 1; i++) {
    bool swapped = false;
    for (int j = 0; j < listProduct.length - 1; j++) {
      if (listProduct[j].price > listProduct[j+1].price) {
        swapped = true;
        swap(listProduct, j);
      }
    }
    if (swapped == false) {
      break;
    }
  }
    for (int i = 0; i < listProduct.length; i++) {
      print(listProduct.elementAt(i).toString());
    } 
}

void swap(List<Product> listProduct, int j) {
  Product temp = listProduct[j];
  listProduct[j] = listProduct[j+1];
  listProduct[j+1] = temp;
}