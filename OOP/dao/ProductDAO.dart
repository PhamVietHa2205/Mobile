import '../muck_entity/Product.dart';
import 'Database.dart';

class ProductDAO {
  Database database = Database.instance;

  bool insert(Product row) {
    try {
      database.insertTable('category', row);
      return true;
    } on Exception {
      return false;
    }
  }

  void update(Product row) {
    database.productTable[database.productTable
        .indexWhere((element) => element.id == row.id)] = row;
  }
  void delete(Product row) {
    database.productTable.removeAt(database.productTable
        .indexWhere((element) => element.id == row.id));
  }
  List<Product> findAll() {
    return database.productTable;
  }
  Product findById(int id) {
    return database.productTable[database.productTable
        .indexWhere((element) => element.id == id)];
  }
}
