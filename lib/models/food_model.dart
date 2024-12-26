class FoodModel {
  String imageCard, imageDetails, name, description;
  double price, rate;
  String specialItems, category;

  FoodModel(
      {required this.imageCard,
      required this.imageDetails,
      required this.name,
      required this.description,
      required this.price,
      required this.rate,
      required this.specialItems,
      required this.category});
}

List<FoodModel> foodProduct = [
  FoodModel(
      imageCard: "assets/beef_burger.png",
      imageDetails: "assets/beef_burger1.png",
      name: "Beef Burger",
      description: "Juicy beef patty topped with fresh lettuce, tomatoes, and a special sauce, served in a soft toasted bun. A classic delight!",
      price: 7.59,
      rate: 4.5,
      specialItems: "Cheesy Mozarella",
      category: "Burger"
  ),
  FoodModel(
      imageCard: "assets/double_burger.png",
      imageDetails: "assets/double_burger1.png",
      name: "Double Burger",
      description: "Double the beef, double the flavor! Two juicy patties stacked with cheese, fresh veggies, and sauce in a toasted bun.",
      price: 7.59,
      rate: 4.5,
      specialItems: "Cheesy Mozarella",
      category: "Burger"
  ),
  FoodModel(
      imageCard: "assets/cheese-burger.png",
      imageDetails: "assets/cheese-burger1.png",
      name: "Cheese Burger",
      description: "Delicious beef patty with melted cheese, crisp veggies, and tangy sauce, all wrapped in a fluffy bun. Perfect for cheese lovers!",
      price: 7.59,
      rate: 4.5,
      specialItems: "Cheesy Mozarella",
      category: "Burger"
  ),
  FoodModel(
      imageCard: "assets/pizza11.png",
      imageDetails: "assets/pizza11.png",
      name: "Chicken Pizza",
      description: "Crispy crust loaded with tender chicken, mozzarella, and flavorful toppings. A perfect slice of joy in every bite!",
      price: 19.99,
      rate: 4.0,
      specialItems: "Cheese Pizza",
      category: "Pizza"
  ),
  FoodModel(
      imageCard: "assets/cup_cake.png",
      imageDetails: "assets/cup-cake1.png",
      name: "Cream Cake",
      description: "Moist and fluffy cupcake topped with creamy frosting and sprinkles. A delightful treat for your sweet cravings!",
      price: 5.99,
      rate: 4.7,
      specialItems: "Mix Cream",
      category: "Cup cake"
  ),
];
