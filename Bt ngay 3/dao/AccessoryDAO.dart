import '../muck_entity/Accessory.dart';
import 'Database.dart';

class AccessoryDAO {
  Database database = Database.instance;

  bool insert(Accessory row) {
    try {
      database.insertTable('accessory', row);
      return true;
    } on Exception {
      return false;
    }
  }

  void update(Accessory row) {
    database.accessoryTable[database.accessoryTable
        .indexWhere((element) => element.id == row.id)] = row;
  }
  void delete(Accessory row) {
    database.accessoryTable.removeAt(database.accessoryTable
        .indexWhere((element) => element.id == row.id));
  }
  List<Accessory> findAll() {
    return database.accessoryTable;
  }
  Accessory findById(int id) {
    return database.accessoryTable[database.accessoryTable
        .indexWhere((element) => element.id == id)];
  }
}
