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

String? findCategoryName(int id, List<Category> listCategory) {
  for (int i = 0; i < listCategory.length; i++) {
    if (listCategory[i].id == id) {
      return listCategory[i].name;
    }
  }
  return null;
}

class MappedProduct {
  late String name;
  late int price;
  late int quality;
  late int categoryId;
  late String? categoryName;
  MappedProduct(
      this.name, this.price, this.quality, this.categoryId, this.categoryName);
  String toString() {
    return "{name: $name, price: $price, quality: $quality, " +
        "categoryId: $categoryId, categoryName: $categoryName}";
  }
}

List<MappedProduct> mapProductByCategory(
    List<Product> listProduct, List<Category> listCategory) {
  List<MappedProduct> newList = [];
  for (int i = 0; i < listProduct.length; i++) {
    newList.add(new MappedProduct(
        listProduct[i].name,
        listProduct[i].price,
        listProduct[i].quality,
        listProduct[i].categoryId,
        findCategoryName(listProduct[i].categoryId, listCategory)));
  }
  return newList;
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

  List<MappedProduct> newProductList =
      mapProductByCategory(listProduct, listCategory);
  for (int i = 0; i < newProductList.length; i++) {
    print(newProductList[i].toString());
  }
}
