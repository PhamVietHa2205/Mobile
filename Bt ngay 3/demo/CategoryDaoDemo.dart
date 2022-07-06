import '../dao/Database.dart';
import '../muck_entity/Category.dart';

class CategoryDaoDemo{
  Database database = Database.instance;
  void init() {
    for (int i = 0; i < 10; i++) {
      Database.instance.categoryTable.add(new Category(i, "cate $i"));
    }
  }
  void insertTest() {
    Category row = new Category(20, 'cateDAOInsert');
    Database.instance.insertTable('category', row);
  }
  void updateTest() {
    Category row = new Category(22, 'cateDAOUpdate');
    Database.instance.updateTable('category', row);
  }
  void deleteTest() {
    Category row = new Category(25, 'cateDAODelete');
    Database.instance.deleteTable('category', row);
  }
  void findAllTest() {
    List<Category> list = Database.instance.selectTable('category');
    print(list);
  }
  void findByIdTest() {
    int id = 5;
    Database.instance.findById('category', id);
  }
  void truncateTable() {
    Database.instance.truncateTable('category');
  }
}
void main() {
  CategoryDaoDemo demo = new CategoryDaoDemo();
  demo.init();
  demo.insertTest();
  demo.findAllTest();
}