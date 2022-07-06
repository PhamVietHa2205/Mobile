import '../dao/Database.dart';
import '../muck_entity/Accessory.dart';

class AccessoryDaoDemo{
  Database database = Database.instance;
  void init() {
    for (int i = 0; i < 10; i++) {
      Database.instance.accessoryTable.add(new Accessory(i, "access $i"));
    }
  }
  void insertTest() {
    Accessory row = new Accessory(20, 'accessDAOInsert');
    Database.instance.insertTable('accessory', row);
  }
  void updateTest() {
    Accessory row = new Accessory(22, 'accessDAOUpdate');
    Database.instance.updateTable('accessory', row);
  }
  void deleteTest() {
    Accessory row = new Accessory(25, 'accessDAODelete');
    Database.instance.deleteTable('accessory', row);
  }
  void findAllTest() {
    List<Accessory> list = Database.instance.selectTable('accessory');
    print(list);
  }
  void findByIdTest() {
    int id = 5;
    Database.instance.findById('accessory', id);
  }
  void truncateTable() {
    Database.instance.truncateTable('accessory');
  }
}
void main() {
  AccessoryDaoDemo demo = new AccessoryDaoDemo();
  demo.insertTest();
  demo.findAllTest();
}