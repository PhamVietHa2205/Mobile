import 'BaseRow.dart';

class Category extends BaseRow {
  int id;
  String name;
  Category(this.id, this.name) : super(0, '');
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