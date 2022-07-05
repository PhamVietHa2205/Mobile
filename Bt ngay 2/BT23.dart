
class Menu {
  late int id;
  late String title;
  late int parent_id;
  Menu(this.id, this.title, this.parent_id);
  String toString() {
    return '{id: $id, title: $title, parent_id: $parent_id}';
  }
}
//get children of a parent menu with id
List<Menu> getChildList(List<Menu> listMenu, int id) {
  List<Menu> childList = [];
  for (int i = 0; i < listMenu.length; i++) {
    if (listMenu[i].parent_id == id) {
      childList.add(listMenu[i]);
    }
  }
  return childList;
}
void printChildList(List<Menu> listMenu, Menu menu, int level) {
  List<Menu> childList = getChildList(listMenu, menu.id);
  if (childList.length > 0) {
    for (int i = 0; i < childList.length; i++) {
      String s = "";
      //determine level for display
      for (int j = 0; j < level; j++) s+= "--";
      print("$s${childList[i].title}");
      printChildList(listMenu, childList[i], level + 1);
    }
  }
}
void printMenu(List<Menu> menus) {
  for (int i = 0; i < menus.length; i++) {
    if (menus[i].parent_id == 0) {
      print(menus[i].title);
      printChildList(menus, menus[i], 1);
    }
  }
}
void main() {
  List<Menu> listMenu = [new Menu(1, "Thể thao", 0),
  new Menu(2,"Xã hội", 0),
  new Menu(3, "Thể thao trong nước", 1),
  new Menu(4, "Giao thông", 2),
  new Menu(5, "Môi trường", 2),
  new Menu(6, "Thể thao quốc tế", 1),
  new Menu(7, "Môi trường đô thị", 5),
  new Menu(8, "Giao thông ùn tắc", 4)
  ];	
	printMenu(listMenu);
}