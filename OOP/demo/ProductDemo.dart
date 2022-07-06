import '../muck_entity/Product.dart';

class ProductDemo {
  void createProductTest() {
    Product product = new Product(2, "aaaa", 23);
    printProduct(product);
  }

  void printProduct(Product product) {
    print(product.toString());
  }
}

void main() {
  ProductDemo demo = new ProductDemo();
  demo.createProductTest();
}
