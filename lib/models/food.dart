class FoodModel {
  final String name;
  final String price;
  final String imagePath;
  final double rating;

  FoodModel(this.name, this.price, this.imagePath, this.rating);
  String get _name => name;
  String get _price => price;
  String get _imagePath => imagePath;
  double get _rating => rating;
}
