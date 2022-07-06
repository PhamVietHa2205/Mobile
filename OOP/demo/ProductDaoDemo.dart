import '../dao/Database.dart';
import '../muck_entity/Product.dart';

class ProductDaoDemo{
  Database database = Database.instance;
  void init() {
    for (int i = 0; i < 10; i++) {
      Database.instance.productTable.add(new Product(i, "pro $i", i));
    }
  }
  void insertTest() {
    Product row = new Product(20, 'proDAOInsert', 5);
    Database.instance.insertTable('product', row);
  }
  void updateTest() {
    Product row = new Product(22, 'proDAOUpdate', 6);
    Database.instance.updateTable('product', row);
  }
  void deleteTest() {
    Product row = new Product(25, 'proDAODelete', 8);
    Database.instance.deleteTable('product', row);
  }
  void findAllTest() {
    List<Product> list = Database.instance.selectTable('product');
    print(list);
  }
  void findByIdTest() {
    int id = 5;
    Database.instance.findById('product', id);
  }
  void truncateTable() {
    Database.instance.truncateTable('product');
  }
}
void main() {
  ProductDaoDemo demo = new ProductDaoDemo();
  demo.init();
  demo.insertTest();
  demo.findAllTest();
}