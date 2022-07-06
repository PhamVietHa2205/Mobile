import '../muck_entity/Accessory.dart';
import '../muck_entity/Category.dart';
import '../muck_entity/Product.dart';

class Database {
  List<Product> productTable = [];
  List<Category> categoryTable = [];
  List<Accessory> accessoryTable = [];
  static final Database _instance = Database._();
  Database._();
  static get instance => _instance;
  void insertTable(String name, dynamic row) {
    if (row is Product || row is Category || row is Accessory) {
      switch (name) {
        case 'product':
          productTable.add(row);
          break;
        case 'category':
          categoryTable.add(row);
          break;
        case 'accessory':
          accessoryTable.add(row);
          break;
      }
    }
  }

  dynamic selectTable(String name) {
    switch (name) {
      case 'product':
        return productTable;
      case 'category':
        return categoryTable;
      case 'accessory':
        return accessoryTable;
    }
  }

  void updateTable(String name, dynamic row) {
    int id = row.id;
    if (row is Product || row is Category || row is Accessory) {
      switch (name) {
        case 'product':
          {
            for (int i = 0; i < productTable.length; i++) {
              if (productTable[i].id == id) {
                productTable[i] = row;
                break;
              }
            }
          }
          break;
        case 'category':
          {
            for (int i = 0; i < categoryTable.length; i++) {
              if (categoryTable[i].id == id) {
                categoryTable[i] = Category(row.id, row.name);
                break;
              }
            }
          }
          break;
        case 'accessory':
          {
            for (int i = 0; i < accessoryTable.length; i++) {
              if (accessoryTable[i].id == id) {
                accessoryTable[i] = Accessory(row.id, row.name);
                break;
              }
            }
          }
      }
    }
  }

  void updateTableById(int id, var row) {
    //check type of object to update
    if (row is Product) {
      for (int i = 0; i < productTable.length; i++) {
        if (productTable[i].id == id) {
          productTable[i] = row;
          break;
        }
      }
    } else if (row is Category) {
      for (int i = 0; i < categoryTable.length; i++) {
        if (categoryTable[i].id == id) {
          categoryTable[i] = row;
          break;
        }
      }
    } else if (row is Accessory) {
      for (int i = 0; i < accessoryTable.length; i++) {
        if (accessoryTable[i].id == id) {
          accessoryTable[i] = row;
          break;
        }
      }
    }
  }

  void deleteTable(String name, var row) {
    if (row is Product || row is Category || row is Accessory) {
      int id = row.id;
      switch (name) {
        case 'product':
          {
            for (int i = 0; i < productTable.length; i++) {
              if (productTable[i].id == id) {
                productTable.removeAt(i);
                break;
              }
            }
          }
          break;
        case 'category':
          {
            for (int i = 0; i < categoryTable.length; i++) {
              if (categoryTable[i].id == id) {
                categoryTable.remove(i + 1);
                break;
              }
            }
          }
          break;
        case 'accessory':
          {
            for (int i = 0; i < accessoryTable.length; i++) {
              if (accessoryTable[i].id == id) {
                accessoryTable.remove(i + 1);
                break;
              }
            }
          }
      }
    }
  }

  void truncateTable(String name) {
    switch (name) {
      case 'product':
        productTable.clear();
        break;
      case 'category':
        categoryTable.clear();
        break;
      case 'accessory':
        accessoryTable.clear();
        break;
    }
  }

  dynamic findById(String name, int id) {
    if (name == 'product')
      return Database.instance.productTable[Database.instance.productTable
          .indexWhere((element) => element.id == id)];
    if (name == 'category')
      return Database.instance.categoryTable[Database.instance.categoryTable
          .indexWhere((element) => element.id == id)];
    if (name == 'accessory')
      return Database.instance.accessoryTable[Database.instance.accessoryTable
          .indexWhere((element) => element.id == id)];
  }
}
