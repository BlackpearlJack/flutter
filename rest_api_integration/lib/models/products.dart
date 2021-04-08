class Products {
  final String name;
  final String description;
  final int price;
  final String image;

  Products(this.name, this.description, this.price, this.image);
  factory Products.fromMap(Map<String, dynamic> json) {
    return Products(
      json['name'],
      json['description'],
      json['price'],
      json['image'],
    );
  }
}