class CatalogModel {
  static final items = [
    Item(
        1,
        "Poco M3 pro 5G",
        "The POCO M3 is a stylish personal device that offers immersive visuals, seamless performance, and long battery life for uninterrupted functioning.",
        10000,
        "blue",
        "https://www.kibotek.com/wp-content/uploads/2021/05/kiboTEK_poco_m3_pro_006.jpg")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);
}
