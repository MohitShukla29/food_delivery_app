import 'package:flutter/material.dart';
import 'package:food_delivery_app/const.dart';
import 'package:food_delivery_app/models/category_model.dart';
import 'package:food_delivery_app/models/food_model.dart';
import 'package:food_delivery_app/screens/food_detail_screen.dart';
import 'package:food_delivery_app/widgets/product_display.dart';

class FoodDeliveryScreen extends StatefulWidget {
  const FoodDeliveryScreen({super.key});

  @override
  _FoodDeliveryScreenState createState() => _FoodDeliveryScreenState();
}

class _FoodDeliveryScreenState extends State<FoodDeliveryScreen> {
  int selectedIndex = 0;
  String category = "Burger";
  List<FoodModel> myFoodmodel = foodProduct;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Container(
            height: 45,
            width: 45,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: grey1, borderRadius: BorderRadius.circular(10)),
            child: Image.asset('assets/dash.png'),
          ),
          const Spacer(),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.location_on_outlined,
                    color: red,
                  )),
              const Text(
                "California, US",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: red,
                  ))
            ],
          ),
          const Spacer(),
          Container(
            height: 45,
            width: 45,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: grey1, borderRadius: BorderRadius.circular(10)),
            child: Image.asset('assets/profile.png'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: imageBackground2),
                  padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            RichText(
                              textAlign: TextAlign.center,
                              text: const TextSpan(
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                children: [
                                  TextSpan(
                                    text: "The Fastest in Delivery ",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: "Food",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            MaterialButton(
                              onPressed: () {},
                              color: red,
                              height: 45,
                              minWidth: 140,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              child: const Text(
                                "Order Now",
                                style:
                                    TextStyle(fontSize: 18, color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                          width: 10), // Adds spacing between RichText and Image
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Image.asset(
                          "assets/courier.png",
                          width: 110,
                          height: 110,
                        ),
                      ),
                    ],
                  ),
                )),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Categories",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: List.generate(
                    myCategories.length,
                    (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          category = myCategories[index].name;
                          category == "Burger"
                              ? myFoodmodel = foodProduct
                              : myFoodmodel = foodProduct
                                  .where((element) =>
                                      element.category.toLowerCase() ==
                                      myCategories[index].name.toLowerCase())
                                  .toList();
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: category == myCategories[index].name
                                ? red
                                : grey1),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: category == myCategories[index].name
                                      ? Colors.white
                                      : Colors.transparent,
                                  shape: BoxShape.circle),
                              child: Image.asset(
                                myCategories[index].image,
                                height: 20,
                                width: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              myCategories[index].name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: category == myCategories[index].name
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Row(
              children: [
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Popular Now",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ))),
                const Spacer(),
                const Text(
                  "View all",
                  style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold, color: orange),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  margin: const EdgeInsets.only(right: 25),
                  height: 30,
                  width: 30,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: orange, borderRadius: BorderRadius.circular(10)),
                  child: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  myFoodmodel.length,
                  (index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 30, top: 30, bottom: 30),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            PageRouteBuilder(
                              transitionDuration: Duration(seconds: 1),
                                pageBuilder: (_,__,___) =>
                                  FoodDetailScreen(product: myFoodmodel[index]),
                            ),
                          );
                        },
                        child: Food_display(
                          foodModel: myFoodmodel[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 110,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home_filled,color: Colors.red,size: 30,),
                CircleAvatar(radius: 3,backgroundColor: red,)
              ],
            ),
            SizedBox(width: 5,),
            Icon(Icons.favorite_border_outlined,size: 30,color: grey,),
            SizedBox(width: 5,),
            Container(
              padding: EdgeInsets.all(17),
              decoration: BoxDecoration(shape: BoxShape.circle,color: red),
              child: Icon(Icons.search,size: 35,color: Colors.white ,),
            ),
            SizedBox(width: 5,),
            Icon(Icons.notifications_none_outlined,size: 30,color: grey,),
            SizedBox(width: 5,),
            Icon(Icons.shopping_cart_outlined,size: 30,color: grey,)
          ],
        ),
      ),
    );
  }
}
