class BaseRow {
  int id;
  String name;
  BaseRow(this.id, this.name);
  String toString() {
    return "{id: $id, name: $name}";
  }
}