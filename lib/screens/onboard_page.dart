import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/food_delivery_home_screen.dart';

import '../const.dart';

class MyonBoardPage extends StatelessWidget {
  const MyonBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            color: imageBackground,
            child: Image.asset(
              'assets/food pattern.png',
              color: imageBackground2,
              repeat: ImageRepeat.repeatY,
            ),
          ),
          Positioned(
              top: -80,
              right: 0,
              left: 0,
              child: Image.asset('assets/chef.png')),
          Positioned(
              top: 125,
              right: 35,
              child: Image.asset('assets/leaf.png', width: 80)),
          Positioned(
              top: 370,
              right: 20,
              child: Image.asset('assets/chili.png', width: 90)),
          Positioned(
              top: 230,
              left: -20,
              child: Image.asset(
                'assets/ginger.png',
                height: 80,
                width: 75,
              )),
          Positioned(
              bottom: 0,
              width: size.width,
              child: ClipPath(
                clipper: CustomClip(),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 70, horizontal: 90),
                  color: Colors.white,
                  child: Column(
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                text: "The Fastest in Delivery ",
                                style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                                text: "Food",
                                style: TextStyle(color: Colors.red),
                              )
                            ]),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Our job is to filling your tummy with delicious food and fast delivery.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: List.generate(
                            3,
                            (index) => Container(
                                  width: index == 0 ? 20 : 10,
                                  height: 10,
                                  margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: index == 0 ? orange : grey),
                                )),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FoodDeliveryScreen()));
                        },
                        color: red,
                        height: 65,
                        minWidth: 250,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Text(
                          "Get Started",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

class CustomClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 30);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 30);
    path.quadraticBezierTo(size.width / 2, -30, 0, 30);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
