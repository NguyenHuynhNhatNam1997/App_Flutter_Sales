import 'package:app_ban_hang/models/food.dart';
import 'package:app_ban_hang/models/order.dart';
import 'package:app_ban_hang/models/restaurant.dart';
import 'package:app_ban_hang/models/user.dart';

//Food

final _burrito =
    Food(imageUrl: 'assets/images/burrito.jpg', name: 'Burrito', price: 8.99);
final _steak =
    Food(imageUrl: 'assets/images/steak.jpg', name: 'Steak', price: 17.99);
final _pasta =
    Food(imageUrl: 'assets/images/pasta.jpg', name: 'Pasta', price: 14.99);
final _ramen =
    Food(imageUrl: 'assets/images/ramen.jpg', name: 'Ramen', price: 13.99);
final _pancakes =
    Food(imageUrl: 'assets/images/pancakes.jpg', name: 'Pancakes', price: 9.99);
final _burger =
    Food(imageUrl: 'assets/images/burger.jpg', name: 'Burger', price: 14.99);
final _pizza =
    Food(imageUrl: 'assets/images/pizza.jpg', name: 'Pizza', price: 20.99);
final _salmon = Food(
    imageUrl: 'assets/images/salmon.jpg', name: 'Salmon Salad', price: 12.99);

// Restaurant
final _restaurant0 = Restaurant(
    imageUrl: 'assets/images/restaurant0.jpg',
    name: 'Restaurant 0',
    rating: 5,
    address: '100 Main St, New York, NY',
    menu: [
      _burrito,
      _steak,
      _pasta,
      _ramen,
      _pancakes,
      _pizza,
      _burger,
      _salmon
    ]);
final _restaurant1 = Restaurant(
    imageUrl: 'assets/images/restaurant1.jpg',
    name: 'Restaurant 1',
    rating: 4,
    address: '100 Main St, New York, NY',
    menu: [
      _steak,
      _pasta,
      _ramen,
      _pancakes,
      _pizza,
      _burger,
    ]);
final _restaurant2 = Restaurant(
    imageUrl: 'assets/images/restaurant2.jpg',
    name: 'Restaurant 2',
    rating: 4,
    address: '100 Main St, New York, NY',
    menu: [_steak, _pasta, _pancakes, _pizza, _burger, _salmon]);
final _restaurant3 = Restaurant(
    imageUrl: 'assets/images/restaurant3.jpg',
    name: 'Restaurant 3',
    rating: 2,
    address: '100 Main St, New York, NY',
    menu: [_burrito, _steak, _pizza, _burger, _salmon]);
final _restaurant4 = Restaurant(
    imageUrl: 'assets/images/restaurant4.jpg',
    name: 'Restaurant 4',
    rating: 4,
    address: '100 Main St, New York, NY',
    menu: [_burrito, _ramen, _pancakes, _salmon]);

List<Restaurant> restaurant = [
  _restaurant0,
  _restaurant1,
  _restaurant2,
  _restaurant3,
  _restaurant4
];

// USER
final currentUser = User(name: 'Damon', orders: [
  Order(
      restaurant: _restaurant2,
      food: _steak,
      date: 'Nov 10, 2019',
      quantity: 1),
  Order(
      restaurant: _restaurant0, food: _ramen, date: 'Nov 8, 2019', quantity: 3),
  Order(
      restaurant: _restaurant1,
      food: _burrito,
      date: 'Nov 5, 2019',
      quantity: 2),
  Order(
      restaurant: _restaurant3,
      food: _salmon,
      date: 'Nov 2, 2019',
      quantity: 1),
  Order(
      restaurant: _restaurant4,
      food: _pancakes,
      date: 'Nov 2, 2019',
      quantity: 1),
], cart: [
  Order(
      date: 'Nov 11, 2019',
      food: _burger,
      restaurant: _restaurant2,
      quantity: 1),
  Order(
      date: 'Nov 11, 2019',
      food: _pasta,
      restaurant: _restaurant2,
      quantity: 1),
  Order(
      date: 'Nov 11, 2019',
      food: _pancakes,
      restaurant: _restaurant4,
      quantity: 3),
  Order(
      date: 'Nov 11, 2019',
      food: _burrito,
      restaurant: _restaurant1,
      quantity: 2),
]);
