// panier.dart
import 'package:flutter/material.dart';
import 'package:maestroshop/model/produit.dart'; // Importez correctement votre modèle de produit

class Panier {
  static final Panier _instance = Panier._internal();
  final List<Product> _products = [];

  factory Panier() => _instance;

  Panier._internal();

  List<Product> get products => List.unmodifiable(_products);

  void addProduct(Product product) {
    _products.add(product);
  }

  void removeProduct(Product product) {
    _products.remove(product);
  }

  double getTotalPrice() {
    return _products.fold(0.0, (sum, product) {
      final price = double.tryParse(product.prix) ?? 0.0;
      return sum + price;
    });
  }

  bool get isEmpty => _products.isEmpty;
}
