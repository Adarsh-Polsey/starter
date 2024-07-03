// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$totalCartHash() => r'67457b3b8a0b2542997cb09840bd4db68fef15de';

/// See also [totalCart].
@ProviderFor(totalCart)
final totalCartProvider = AutoDisposeProvider<double>.internal(
  totalCart,
  name: r'totalCartProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$totalCartHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TotalCartRef = AutoDisposeProviderRef<double>;
String _$cartNotifierHash() => r'f5eec86e65c143b49a5cec729dcbaab74788738b';

/// See also [CartNotifier].
@ProviderFor(CartNotifier)
final cartNotifierProvider =
    AutoDisposeNotifierProvider<CartNotifier, Set<Product>>.internal(
  CartNotifier.new,
  name: r'cartNotifierProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cartNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CartNotifier = AutoDisposeNotifier<Set<Product>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
