import 'package:flutter/material.dart';
import 'package:maestroshop/model/panier.dart';
import 'package:maestroshop/model/produit.dart';
import 'package:maestroshop/utils/colors_pers.dart';
import 'package:maestroshop/utils/size_classe.dart';

class AchatPage extends StatefulWidget {
  const AchatPage({super.key});

  @override
  State<AchatPage> createState() => _AchatPageState();
}

class _AchatPageState extends State<AchatPage> {
  late List<Product> cartProducts;

  @override
  void initState() {
    super.initState();
    cartProducts = Panier().products;
  }

  @override
  Widget build(BuildContext context) {
    final isEmpty = cartProducts.isEmpty;
    final totalPrice = Panier().getTotalPrice();

    return Scaffold(
      body: isEmpty
          ? Center(child: Text('Aucun produit ajouté au panier.'))
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cartProducts.length,
                    itemBuilder: (context, index) {
                      final product = cartProducts[index];
                      return ListTile(
                        leading: Image.asset(product.image),
                        title: Text(product.title),
                        subtitle: Text("${product.prix} FCFA"),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.delete,
                            color: ColorsPers.colorRed,
                          ),
                          onPressed: () {
                            setState(() {
                              Panier().removeProduct(product);
                              cartProducts = Panier()
                                  .products; // Recharger les produits du panier
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                      '${product.title} a été retiré du panier'),
                                  duration: Duration(seconds: 2),
                                ),
                              );
                            });
                          },
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: SizeClasse.size10),
                  decoration: BoxDecoration(
                    color: ColorsPers.colorWhite,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(SizeClasse.size16),
                  child: Text(
                    'Total: \$${totalPrice.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
