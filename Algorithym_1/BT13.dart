class Product {
  late String name;
  late int price;
  late int quality;
  late int categoryId;
  Product(this.name, this.price, this.quality, this.categoryId);
  String toString() {
    return "{name: $name, price: $price, quality: $quality, categoryId: $categoryId}";
  }
}

class Category {
  late int id;
  late String name;
  Category(this.id, this.name);
  String toString() {
    return "{id: $id, name: $name}";
  }
}

void main() {
  List<Product> listProduct = [
    new Product('CPU', 750, 10, 1),
    new Product('RAM', 50, 2, 2),
    new Product('HDD', 70, 1, 2),
    new Product('Main', 400, 3, 1),
    new Product('Keyboard', 30, 8, 4),
    new Product('Mouse', 25, 50, 4),
    new Product('VGA', 60, 35, 3),
    new Product('Monitor', 120, 28, 2),
    new Product('Case', 120, 28, 5)
  ];
  List<Category> listCategory = [
    new Category(1, 'Comuter'),
    new Category(2, 'Memory'),
    new Category(3, 'Card'),
    new Category(4, 'Acsesory')
  ];

  List<Product> sortedList = sortByCategoryName(listProduct, listCategory);
  for (int i = 0; i < sortedList.length; i++) {
    print(sortedList[i].toString());
  }
}

String getCategoryName(int id, List<Category> listCategory) {
  for (int i = 0; i < listCategory.length; i++) {
    if (listCategory[i].id == id) {
      return listCategory[i].name;
    }
  }
  return "No category name in list";
}

List<Product> sortByCategoryName(
    List<Product> listProduct, List<Category> listCategory) {
  for (int i = 1; i < listProduct.length; i++) {
    int pos = i;
    Product insertValue = listProduct[pos];
    while (pos > 0 &&
        getCategoryName(listProduct[pos - 1].categoryId, listCategory)
                .compareTo(
                    getCategoryName(insertValue.categoryId, listCategory)) >
            0) {
      listProduct[pos] = listProduct[pos - 1];
      pos--;
    }
    if (pos != i) {
      listProduct[pos] = insertValue;
    }
  }
  return listProduct;
}
