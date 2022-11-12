class PlantItem {
  final String name;
  final int price;
  final String image;
  final String descrip;
  final String temp;
  final String light;

  PlantItem({
    required this.name,
    required this.price,
    required this.image,
    required this.descrip,
    required this.temp,
    required this.light,
  });

  factory PlantItem.fromJson(Map<String, dynamic> json){
    return PlantItem(
      name: json['name'],
      price: json['price'],
      image: json['image'],
      descrip: json['descrip'],
      temp: json['temp'],
      light: json['light'],
    );
  }
}
