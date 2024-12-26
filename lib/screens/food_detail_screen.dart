import 'package:flutter/material.dart';
import 'package:food_delivery_app/const.dart';
import 'package:food_delivery_app/models/food_model.dart';
import 'package:readmore/readmore.dart';

class FoodDetailScreen extends StatefulWidget {
  final FoodModel product;
  const FoodDetailScreen({super.key, required this.product});

  @override
  State<FoodDetailScreen> createState() => _FoodDetailScreenState();
}

class _FoodDetailScreenState extends State<FoodDetailScreen> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          forceMaterialTransparency: true,
          leadingWidth: 80,
          actions: [
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                height: 40,
                width: 40,
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.white),
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.black,
                  size: 18,
                ),
              ),
            ),
            Spacer(),
            Container(
              height: 40,
              width: 40,
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: grey1),
              child: const Icon(
                Icons.more_horiz_outlined,
                color: Colors.black,
              ),
            ),
          ],
        ),
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            Container(
                decoration: const BoxDecoration(color: imageBackground),
                child: Image.asset(
                  "assets/food pattern.png",
                  width: size.width,
                  height: size.height,
                  repeat: ImageRepeat.repeatY,
                  color: imageBackground2,
                )),
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Container(
                height: size.height * 0.75,
                width: size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white),
              ),
            ),
            Container(
              height: size.height,
              width: size.width,
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Hero(
                        tag: widget.product.imageCard,
                        child: Image.asset(
                          widget.product.imageDetails,
                          height: 320,
                          fit: BoxFit.fill,
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 45,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30), color: red),
                      child: Center(
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  if (quantity > 1) quantity--;
                                });
                              },
                              icon:
                                  const Icon(Icons.remove, color: Colors.white),
                            ),
                            Text(
                              '$quantity',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  quantity++;
                                });
                              },
                              icon: const Icon(Icons.add, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * .05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.product.name,
                              style: const TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              widget.product.specialItems,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(.6)),
                            )
                          ],
                        ),
                        RichText(
                            text: TextSpan(
                                style: TextStyle(fontWeight: FontWeight.bold),
                                children: [
                              const TextSpan(
                                text: "\$",
                                style: TextStyle(fontSize: 14, color: red),
                              ),
                              TextSpan(
                                  text: "${widget.product.price}",
                                  style: const TextStyle(
                                      fontSize: 26, color: Colors.black))
                            ]))
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/star.png",
                              height: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "${widget.product.rate}",
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/fire.png",
                              height: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "150 Kcal",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/time.png",
                              height: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "5-10 min",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ReadMoreText(
                      widget.product.description,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                      trimLength: 110,
                      trimCollapsedText: "Read More",
                      trimExpandedText: "Read Less",
                      colorClickableText: red,
                      moreStyle: TextStyle(color: red,fontWeight: FontWeight.bold),
                      lessStyle: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () {},
            backgroundColor: Colors.transparent,
            elevation: 0,
            label: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              height: 65,
              minWidth: 320,
              color: Colors.red,
              elevation: 0,
              onPressed: () {},
              child: Center(
                child: Text(
                  "Add to Cart",
                  style: TextStyle(
                      fontSize: 18, letterSpacing: 1.3, color: Colors.white),
                ),
              ),
            )));
  }
}
