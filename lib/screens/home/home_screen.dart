import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/models/product.dart';
import 'package:riverpod_files/providers/cart_provider.dart';
import 'package:riverpod_files/providers/products_provider.dart';
import 'package:riverpod_files/shared/cart_icon.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Product> allProducts = ref.watch(productsProvider);
    final cartProducts = ref.watch(cartNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        title: const Text('Garage Sale Products'),
        actions: const [CartIcon()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: allProducts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 0.9,
          ),
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              color: Colors.blueGrey.withOpacity(0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    allProducts[index].image,
                    height: 60,
                    width: 60,
                  ),
                  const SizedBox(height: 10),
                  Text(allProducts[index].title),
                  const SizedBox(height: 10),
                  Text("\$${allProducts[index].price}"),
                  if (cartProducts.contains(allProducts[index]))
                    TextButton(
                      onPressed: () {},
                      child: const Text("Remove"),
                    )
                  else
                    TextButton(
                      onPressed: () {},
                      child: const Text("Add"),
                    )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
