import 'package:f_coffee_shop/core/configs/assets/images.dart';
import 'package:f_coffee_shop/core/model/coffee_category.dart';
import 'package:f_coffee_shop/core/model/coffee_type.dart';
import 'package:f_coffee_shop/core/model/product.dart';
import 'package:f_coffee_shop/core/model/product_size.dart';

class CartProductList {
  static const list = <Product>[
    FreezeDriedCoffee(
      name: 'Cappuccino',
      subname: 'With Steamed Milk',
      imageUrl: AppAssetsImages.test1,
      description:
          'Cappuccino is a latte made with more foam than steamed milk, often with a sprinkle of cocoa powder or cinnamon on top.',
      availableSizes: [
        ProductSize(title: 'S', price: 4.20),
        ProductSize(title: 'M', price: 8.00),
        ProductSize(title: 'L', price: 11.50),
      ],
      category: CoffeeCategories.cappuccino,
      roastingLevel: 'Medium Roasted',
      coffeeType: CoffeeType(
        title: 'Milk',
        imageUrl: AppAssetsImages.coffeTypeMilk,
      ),
    ),
    FreezeDriedCoffee(
      name: 'Cappuccino',
      subname: 'With Foam',
      imageUrl: AppAssetsImages.test2,
      description:
          'A cappuccino is a coffee drink made from a mixture of espresso and steamed milk. A traditional Italian cappuccino is generally a single (or sometimes a double) espresso shot topped with equal parts steamed and frothed milk (in a ratio of 1:1:1).',
      availableSizes: [
        ProductSize(title: 'M', price: 4.80),
      ],
      category: CoffeeCategories.cappuccino,
      roastingLevel: 'Medium Roasted',
      coffeeType: CoffeeType(
        title: 'Milk',
        imageUrl: AppAssetsImages.coffeTypeMilk,
      ),
    ),
    CoffeeBeans(
      name: 'Arabica Beans',
      subname: 'From Africa',
      imageUrl: AppAssetsImages.coffeeBeansTest1,
      description:
          'Arabica beans are by far the most popular type of coffee beans, making up about 60% of the world’s coffee. These tasty beans originated many centuries ago in the highlands of Ethiopia, and may even be the first coffee beans ever consumed! ',
      availableSizes: [
        ProductSize(title: '250gm', price: 6.20),
      ],
      roastingLevel: 'Medium Roasted',
    ),
    CoffeeBeans(
      name: 'Liberica Coffee Beans',
      subname: 'From Africa',
      imageUrl: AppAssetsImages.coffeeBeansTest3,
      description:
          'Coffea liberica beans are larger than Arabica and Robusta beans, with a unique shape that resembles a teardrop. They also have a distinct aroma, with a floral and fruity scent that is often described as similar to jackfruit.',
      availableSizes: [
        ProductSize(title: '250gm', price: 5.00),
        ProductSize(title: '500gm', price: 9.40),
        ProductSize(title: '1kg', price: 12.00),
      ],
      roastingLevel: 'Medium Roasted',
    ),
  ];
}
