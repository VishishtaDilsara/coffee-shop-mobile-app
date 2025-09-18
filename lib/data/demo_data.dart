import 'package:coffee_shop/models/product_model.dart';

class Categories {
  static List<String> coffeeCategories = [
    'All Coffee',
    'Espresso',
    'Americano',
    'Latte',
    'Cappuccino',
    'Mocha',
    'Macchiato',
    'Flat White',
    'Affogato',
    'Irish Coffee',
    'Cold Brew',
  ];

  static List<Product> products = [
    Product(
      name: 'Caffe Mocha',
      image: 'assets/images/1.png',
      rating: 4.8,
      category: 'Espresso',
      price: 4.53,
    ),
    Product(
      name: 'Iced Americano',
      image: 'assets/images/2.png',
      rating: 4.5,
      category: 'Americano',
      price: 3.99,
    ),
    Product(
      name: 'Vanilla Latte',
      image: 'assets/images/3.png',
      rating: 4.7,
      category: 'Latte',
      price: 4.25,
    ),
    Product(
      name: 'Classic Cappuccino',
      image: 'assets/images/4.png',
      rating: 4.6,
      category: 'Cappuccino',
      price: 4.10,
    ),
    Product(
      name: 'Flat White',
      image: 'assets/images/5.png',
      rating: 4.4,
      category: 'Flat White',
      price: 4.00,
    ),
  ];
}
