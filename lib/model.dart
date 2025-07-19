class DrinkModel {
  final String Image;
  final String name;
  final String title;
  final String Price;

  DrinkModel({
    required this.Image,
    required this.name,
    required this.title,
    required this.Price,
  });

  static List<DrinkModel> drink = [
    DrinkModel(
      Image: "assets/Chocolate.png",
      name: "Milkshake",
      title: "20 flavors of cups",
      Price: "20",
    ),
    DrinkModel(
      Image: "assets/Salted Caramel.png",
      name: "Salted Caramel",
      title: "20 flavors of cups",
      Price: "30",
    ),
    DrinkModel(
      Image: "assets/Strawberry.png",
      name: "Strawberry",
      title: "50 flavors of cups",
      Price: "70",
    ),
    DrinkModel(
      Image: "assets/Brownie Island.png",
      name: "Brownie Island",
      title: "20 flavors of cups",
      Price: "98",
    ),
    DrinkModel(
      Image: "assets/Peanut Butter.png",
      name: "Peanut Butter",
      title: "18 flavors of cups",
      Price: "75",
    ),
    DrinkModel(
      Image: "assets/Salted Caramel.png",
      name: "chokletwithCrema",
      title: "97 flavors of cups",
      Price: "85",
    ),

    DrinkModel(
      Image: "assets/Banana.png",
      name: "Milk with Crema",
      title: "97 flavors of cups",
      Price: "120",
    ),
    DrinkModel(
      Image: "assets/Brownie Island.png",
      name: "Brownie Island",
      title: "20 flavors of cups",
      Price: "95",
    ),
    DrinkModel(
      Image: "assets/Peanut Butter.png",
      name: "Peanut Butter",
      title: "18 flavors of cups",
      Price: "180",
    ),
    /////////////////
    DrinkModel(
      Image: "assets/Crema Latte with Marchem.png",
      name: "CremaMarchem",
      title: "16 flavors of cups",
      Price: "70",
    ),
    DrinkModel(
      Image: "assets/fac24dfa06612513c59b91e9c91ffe35.png",
      name: "CaramelLatte",
      title: "42 flavors of cups",
      Price: "90",
    ),
    DrinkModel(
      Image: "assets/Iced Coffee with Whipped Cream.png",
      name: "IcedCoffeeWhipped",
      title: "53 flavors of cups",
      Price: "80",
    ),
    DrinkModel(
      Image: "assets/Glass of Caramel Latte with Cream .png",
      name: "AmricanCofe",
      title: "63 flavors of cups",
      Price: "200",
    ),
  ];
}
