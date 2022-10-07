import 'dart:ui';

import 'package:app_ban_hang/models/restaurant.dart';
import 'package:app_ban_hang/screens/recent_orders.dart';
import 'package:app_ban_hang/widgets/rating_start.dart';
import 'package:flutter/material.dart';
import 'package:app_ban_hang/data/data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
} // test data aaaaa

class _HomeScreenState extends State<HomeScreen> {
  //
  _buildRestaurants() {
    List<Widget> restaurantList = [];
    restaurant.forEach((Restaurant restaurant) {
      restaurantList.add(
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                width: 1,
                color: Colors.grey.shade200,
              ),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Hero(
                    tag: restaurant.imageUrl,
                    child: Image(
                      height: 150,
                      width: 150,
                      image: AssetImage(restaurant.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          restaurant.name,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        RatingStarts(restaurant.rating),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          restaurant.address,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '0.2 miles away',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
    return Column(children: restaurantList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.account_circle),
          iconSize: 30,
          color: Colors.white,
        ),
        title: const Text(
          "Food  Delivery",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                "Cart (5)",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ))
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                fillColor: Colors.white,
                filled: true,
                hintText: 'Search Food or Restaurant',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                      width: 0.8, color: Theme.of(context).primaryColor),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(width: 0.8),
                ),
                // prefixIcon là vị trí icon nằm ở đầu trong textfile
                prefixIcon: Icon(
                  Icons.search,
                  size: 30,
                ),
                // suffixIcon là vị trí icon nằm ở đầu trong textfile
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.clear),
                ),
              ),
            ),
          ),
          RecentOrders(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Nearby Restaurants',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.2),
                ),
              ),
              _buildRestaurants()
            ],
          ),
        ],
      ),
    );
  }
}
