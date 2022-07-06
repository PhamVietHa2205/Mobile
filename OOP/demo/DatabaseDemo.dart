import '../dao/Database.dart';
import '../muck_entity/Accessory.dart';
import '../muck_entity/BaseRow.dart';
import '../muck_entity/Category.dart';
import '../muck_entity/Product.dart';

class DatabaseDemo {
  Database database = Database.instance;
  
  void insertTableTest() {
    BaseRow row = new BaseRow(10, "hahaha");
    String name = "product";
    database.insertTable(name, row);
  }

  void selectTableTest() {
    String name = "product";
    print(database.selectTable(name));
  }

  void updateTableTest() {
    //update with name and row
    String name = "product";
    Product row = new Product(2, "new product", 3);
    database.updateTable(name, row);
    //update with id and item type of Product/Category/Accessory
    int id = 3;
    var updateItem = Category(5, "cate");
    database.updateTableById(id, updateItem);
  }

  void deleteTableTest() {
    String name = "product";
    BaseRow row = new BaseRow(1, "sas");
    database.deleteTable(name, row);
  }

  void truncateTableTest() {
    String name = "category";
    database.truncateTable(name);
  }

  void initDatabase() {
    //add 10 item for each array of database
    for (int i = 0; i < 10; i++) {
      database.productTable.add(new Product(i, "product $i", i));
      database.categoryTable.add(new Category(i, "category $i"));
      database.accessoryTable.add(new Accessory(i, "accessory $i"));
    }
  }

  void printTableTest() {
    print("Product table: ");
    for (var i in database.productTable) {
      print(i.toString());
    }
    print("Category table: ");
    for (var i in database.categoryTable) {
      print(i.toString());
    }
    print("Accessory table: ");
    for (var i in database.accessoryTable) {
      print(i.toString());
    }
  }
}

void main() {
  DatabaseDemo demo = new DatabaseDemo();
  //run test funtion here
  demo.initDatabase();
  demo.updateTableTest();
  //demo.deleteTableTest();
  //demo.truncateTableTest();
  //demo.selectTableTest();
  demo.printTableTest();
}
