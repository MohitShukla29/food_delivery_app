import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/const.dart';
import 'package:food_delivery_app/models/food_model.dart';

class Food_display extends StatelessWidget {
  final FoodModel foodModel;
  const Food_display({super.key, required this.foodModel});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          height: 200,
          width: size.width * 0.5,
          decoration: BoxDecoration(
              color: Colors.white, // Background color
              borderRadius: BorderRadius.circular(35), // Border radius
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.07),
                    spreadRadius: 10,
                    blurRadius: 20),
              ]),
        ),
        Container(

          width: size.width * 0.5,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(35),
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,

                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey.shade300),
                    child: Image.asset("assets/fire.png"),
                  ),
                ),

              Hero(
                tag: foodModel.imageCard,
                child: Image.asset(
                  foodModel.imageCard,
                  height: 110,
                  width: 150,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  foodModel.name,
                  maxLines: 1,
                  style:
                      const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),

              Text(foodModel.specialItems,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(0.7))),

              SizedBox(
                height: 20,
              ),
              RichText(
                  text: TextSpan(
                      style: TextStyle(fontWeight: FontWeight.bold),
                      children: [
                    TextSpan(
                      text: "\$",
                      style: TextStyle(fontSize: 14, color: red),
                    ),
                    TextSpan(
                        text: "${foodModel.price}",
                        style: TextStyle(fontSize: 25, color: Colors.black))
                  ]))
            ],
          ),
        ),
      ],
    );
  }
}
