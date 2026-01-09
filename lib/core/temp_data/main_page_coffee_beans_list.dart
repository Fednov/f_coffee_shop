import 'package:f_coffee_shop/core/configs/assets/images.dart';
import 'package:f_coffee_shop/core/model/product.dart';
import 'package:f_coffee_shop/core/model/product_rate.dart';

import '../model/product_size.dart';

class MainPageCoffeeBeansList {
  static const list = <CoffeeBeans>[
    CoffeeBeans(
      name: 'Arabica Beans',
      subname: 'From Africa',
      imageUrl: AppAssetsImages.coffeeBeansTest1,
      placeOfOrigin: 'Africa',
      roastingLevel: 'Medium Roasted',
      description:
          'Arabica beans are by far the most popular type of coffee beans, making up about 60% of the world’s coffee. These tasty beans originated many centuries ago in the highlands of Ethiopia, and may even be the first coffee beans ever consumed! ',
      rate: ProductRate(
        averageRatingScore: 4.7,
        numberOfVotes: 4285,
      ),
      availableSizes: [
        ProductSize(title: '250gm', price: 4.20),
        ProductSize(title: '500gm', price: 8.00),
        ProductSize(title: '1000gm', price: 12.40),
      ],
    ),
    CoffeeBeans(
      name: 'Robusta Beans',
      subname: 'From Africa',
      imageUrl: AppAssetsImages.coffeeBeansTest2,
      description:
          'Coffee made from beans of the Coffea canephora plant has low acidity and high bitterness, often with a distinct woody and nutty taste. C. canephora beans, widely known by the synonym Coffea robusta, are used primarily in instant coffee, espresso, and as a filler in ground coffee blends.',
      placeOfOrigin: 'Africa',
      roastingLevel: 'Medium Roasted',
      rate: ProductRate(
        averageRatingScore: 4.2,
        numberOfVotes: 2741,
      ),
      availableSizes: [
        ProductSize(title: '250gm', price: 4.60),
      ],
    ),
    CoffeeBeans(
      name: 'Liberica Coffee Beans',
      subname: 'From Africa',
      imageUrl: AppAssetsImages.coffeeBeansTest3,
      placeOfOrigin: 'Africa',
      roastingLevel: 'Medium Roasted',
      description:
          'Coffea liberica beans are larger than Arabica and Robusta beans, with a unique shape that resembles a teardrop. They also have a distinct aroma, with a floral and fruity scent that is often described as similar to jackfruit.',
      rate: ProductRate(
        averageRatingScore: 4.3,
        numberOfVotes: 5772,
      ),
      availableSizes: [
        ProductSize(title: '250gm', price: 5.00),
        ProductSize(title: '500gm', price: 9.40),
        ProductSize(title: '1kg', price: 12.00),
      ],
    ),
  ];
}
