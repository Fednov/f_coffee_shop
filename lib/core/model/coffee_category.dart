enum CoffeeCategories {
  allCoffee,
  cappuccino,
  americano,
  espresso,
  machiato,
  latte,
}

extension CoffeeCategoryExtension on CoffeeCategories {
  String name() {
    switch (this) {
      case CoffeeCategories.allCoffee:
        return 'All';
      case CoffeeCategories.cappuccino:
        return 'Cappuccino';
      case CoffeeCategories.americano:
        return 'Americano';
      case CoffeeCategories.espresso:
        return 'Espresso';
      case CoffeeCategories.machiato:
        return 'Machiato';
      case CoffeeCategories.latte:
        return 'Latte';
      default:
        return 'Unknown';
    }
  }
}
