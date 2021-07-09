import 'dart:ui';

import 'package:flutter/material.dart';

class FoodHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/food/Rectangle.png'),
        fit: BoxFit.cover,
      )),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10.0,
          sigmaY: 10.0,
        ),
        child: Scaffold(
          backgroundColor: Colors.white.withOpacity(0.2),
          appBar: AppBar(
            leading: Image.asset(
              'assets/food/align-left.png',
              color: Colors.white,
            ),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Delicious Food',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 25.0),
                  ),
                  Text(
                    'We Made Fresh And Healthy Food For You',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 17.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 100.0,
                    child: GridView.count(
                      crossAxisCount: 1,
                      scrollDirection: Axis.horizontal,
                      children: [
                        IconButton(
                          iconUrl: 'assets/food/Group35.png',
                        ),
                        IconButton(
                          iconUrl: 'assets/food/Group39.png',
                        ),
                        IconButton(
                          iconUrl: 'assets/food/Group36.png',
                        ),
                        IconButton(
                          iconUrl: 'assets/food/Group41.png',
                        ),
                        IconButton(
                          iconUrl: 'assets/food/Group40.png',
                        ),
                        IconButton(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width: size.width,
                    height: size.height * 0.56,
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 0.6,
                      scrollDirection: Axis.vertical,
                      children: [
                        DishCard(),
                        DishCard(
                          dishImageUrl: 'assets/food/Rectangle.png',
                          dishName: 'Half Fry Egg',
                          dishSublabel: '4 Peace Real Egg',
                          price: '10',
                        ),
                        DishCard(
                          dishImageUrl: 'assets/food/Spl._Chicken_Biriyani.jpg',
                          dishName: 'Special Chicken Biryani',
                          dishSublabel: 'Full Plate',
                          price: '20',
                        ),
                        DishCard(),
                        DishCard(
                          dishImageUrl: 'assets/food/Rectangle.png',
                          dishName: 'Half Fry Egg',
                          dishSublabel: '4 Peace Real Egg',
                          price: '10',
                        ),
                        DishCard(
                          dishImageUrl: 'assets/food/Spl._Chicken_Biriyani.jpg',
                          dishName: 'Special Chicken Biryani',
                          dishSublabel: 'Full Plate',
                          price: '20',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomSheet: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(30.0),
              ),
              height: 60.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  Icon(
                    Icons.home_filled,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  Icon(
                    Icons.wallet_membership,
                    color: Colors.white,
                    size: 30.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class IconButton extends StatelessWidget {
  final String? iconUrl;
  const IconButton({Key? key, this.iconUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80.0,
        width: 80.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.white.withOpacity(0.5),
            image: DecorationImage(
              image: AssetImage(iconUrl ?? 'assets/food/Group38.png'),
            )),
      ),
    );
  }
}

class DishCard extends StatelessWidget {
  final String? dishImageUrl;
  final String? dishName;
  final String? dishSublabel;
  final String? price;
  const DishCard(
      {Key? key,
      this.dishImageUrl,
      this.dishName,
      this.dishSublabel,
      this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.white.withOpacity(0.5),
                    image: DecorationImage(
                        image: AssetImage(
                            dishImageUrl ?? 'assets/food/Chicken-Biriyani.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                dishName ?? 'Chicken Biryani',
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4.0, top: 2.0),
              child: Text(
                dishSublabel ?? 'Real Chicken',
                style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4.0, top: 4.0, right: 26.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${price ?? '15.00'}',
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
