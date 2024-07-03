import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/providers/cart_provider.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
  ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  bool showCoupon = true;

  @override
  Widget build(BuildContext context) {
    final products = ref.watch(cartNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
        centerTitle: true,
        // actions: [],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Column(
              children: products.map((p) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    color: Colors.grey.withOpacity(0.05),
                    height: 70,
                    child: Row(
                      children: [
                        Image.asset(
                          p.image,
                          height: 30,
                        ),
                        const SizedBox(width: 10),
                        Text(p.title),
                        const Expanded(child: SizedBox()),
                        Text(p.price.toString()),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                );
              }).toList(), // output cart products here
            ),

            // output totals here
          ],
        ),
      ),
    );
  }
}
