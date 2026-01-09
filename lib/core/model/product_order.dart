import 'product.dart';
import 'product_size.dart';

class ProductOrder {
  ProductOrder({
    required this.product,
    required this.ordered,
  });
  final Product product;
  final Set<OrderedSize> ordered;
}

class OrderedSize {
  OrderedSize({
    required this.productSize,
    required this.count,
  });
  final ProductSize productSize;
  final int count;
}
