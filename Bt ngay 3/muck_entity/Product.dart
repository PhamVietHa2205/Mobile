import 'BaseRow.dart';

class Product extends BaseRow{
  int id;
  String name;
  int categoryId;

  Product(this.id, this.name, this.categoryId) : super(0, '');

  int getId() {
    return id;
  }

  void setId(int id) {
    this.id = id;
  }

  String toString() {
    return "{id: $id, name: $name, categoryId: $categoryId}";
  }
}
