import 'package:f_coffee_shop/core/configs/assets/images.dart';
import 'package:f_coffee_shop/core/model/coffee_category.dart';
import 'package:f_coffee_shop/core/model/coffee_type.dart';
import 'package:f_coffee_shop/core/model/product.dart';
import 'package:f_coffee_shop/core/model/product_rate.dart';
import 'package:f_coffee_shop/core/model/product_size.dart';

class MainPageFreezeDriedCoffeeListTemp {
  MainPageFreezeDriedCoffeeListTemp._();

  static const list = <FreezeDriedCoffee>[
    FreezeDriedCoffee(
      name: 'Cappuccino',
      subname: 'With Steamed Milk',
      imageUrl: AppAssetsImages.test1,
      category: CoffeeCategories.allCoffee,
      roastingLevel: 'Medium Roasted',
      description:
          'Cappuccino is a latte made with more foam than steamed milk, often with a sprinkle of cocoa powder or cinnamon on top.',
      coffeeType: CoffeeType(
        title: 'Milk',
        imageUrl: AppAssetsImages.coffeTypeMilk,
      ),
      rate: ProductRate(averageRatingScore: 4.5, numberOfVotes: 6879),
      availableSizes: [
        ProductSize(title: 'S', price: 4.20),
        ProductSize(title: 'M', price: 8.00),
        ProductSize(title: 'L', price: 11.50),
        // ProductSize(title: 'XL', price: 15.00),
      ],
    ),
    FreezeDriedCoffee(
      name: 'Cappuccino',
      subname: 'With Foam',
      imageUrl: AppAssetsImages.test2,
      category: CoffeeCategories.allCoffee,
      roastingLevel: 'Medium Roasted',
      description:
          'A cappuccino is a coffee drink made from a mixture of espresso and steamed milk. A traditional Italian cappuccino is generally a single (or sometimes a double) espresso shot topped with equal parts steamed and frothed milk (in a ratio of 1:1:1).',
      coffeeType: CoffeeType(
        title: 'Milk',
        imageUrl: AppAssetsImages.coffeTypeMilk,
      ),
      rate: ProductRate(averageRatingScore: 4.2, numberOfVotes: 6879),
      availableSizes: [
        ProductSize(title: 'S', price: 4.80),
      ],
    ),
    FreezeDriedCoffee(
      name: 'Flat white',
      subname: 'Double espresso',
      imageUrl: AppAssetsImages.test3,
      category: CoffeeCategories.allCoffee,
      roastingLevel: 'Medium Roasted',
      description:
          'Flat white is a coffee drink consisting of espresso and steamed milk. It generally has a higher proportion of espresso to milk than a latte, and lacks the thick layer of foam in a cappuccino. While the origin of the flat white is unclear, café owners in both Australia and New Zealand claim its invention.',
      coffeeType: CoffeeType(
        title: 'Milk',
        imageUrl: AppAssetsImages.coffeTypeMilk,
      ),
      rate: ProductRate(averageRatingScore: 4.7, numberOfVotes: 6879),
      availableSizes: [
        ProductSize(title: 'S', price: 5.20),
      ],
    ),
  ];
}
