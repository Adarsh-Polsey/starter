import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_files/models/product.dart';
part 'cart_provider.g.dart';

@riverpod
class CartNotifier extends _$CartNotifier {
  @override
  Set<Product> build() {
    return const {};
  }

  void addProduct(Product product) {
    if (!state.contains(product)) state = {...state, product};
  }

  void removeProduct(Product product) {
    if (state.contains(product)) {
      state = state.where((p) {
        return p.id != product.id;
      }).toSet();
    }
  }
}

@riverpod
double totalCart(ref) {
  final products = ref.watch(cartNotifierProvider);
  double total = 0;
  for (Product p in products) {
    total += p.price;
  }
  return total;
}
