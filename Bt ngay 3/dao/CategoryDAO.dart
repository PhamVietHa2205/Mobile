import '../muck_entity/Category.dart';
import 'Database.dart';

class CategoryDAO {
  Database database = Database.instance;

  bool insert(Category row) {
    try {
      database.insertTable('category', row);
      return true;
    } on Exception {
      return false;
    }
  }

  void update(Category row) {
    database.categoryTable[database.categoryTable
        .indexWhere((element) => element.id == row.id)] = row;
  }
  void delete(Category row) {
    database.categoryTable.removeAt(database.categoryTable
        .indexWhere((element) => element.id == row.id));
  }
  List<Category> findAll() {
    return database.categoryTable;
  }
  Category findById(int id) {
    return database.categoryTable[database.categoryTable
        .indexWhere((element) => element.id == id)];
  }
}
