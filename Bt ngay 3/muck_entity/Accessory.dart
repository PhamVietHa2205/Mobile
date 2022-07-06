import 'BaseRow.dart';

class Accessory extends BaseRow{
  int id;
  String name;
  Accessory(this.id, this.name) : super(0, '');
  int getId() {
    return id;
  }
  void setId(int id) {
    this.id = id;
  }
  String toString() {
    return "{id: $id, name: $name}";
  }
}