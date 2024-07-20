import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:maestroshop/model/panier.dart';
import 'package:maestroshop/model/produit.dart';
import 'package:maestroshop/utils/colors_pers.dart';
import 'package:maestroshop/utils/size_classe.dart';
import 'package:maestroshop/view/Detail_produit.dart';
import 'package:maestroshop/view/accueil_page.dart';

class ProduitPage extends StatefulWidget {
  const ProduitPage({super.key});

  @override
  State<ProduitPage> createState() => _ProduitPageState();
}

class _ProduitPageState extends State<ProduitPage> {
  int _selectedIndex = 0;
  Set<Product> favoriteProducts = {};
  String searchQuery = "";
//Pour la gestion des produits ce trouvant dans le panier

  void _onAddToCart(Product product) {
    Panier().addProduct(product);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${product.title} a été ajouté au panier'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  void _onFavoriteTap(Product product) {
    setState(() {
      if (favoriteProducts.contains(product)) {
        product.isFavorite = false;
        favoriteProducts.remove(product);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('${product.title} a été retiré des favoris'),
            duration: const Duration(seconds: 2),
          ),
        );
      } else {
        product.isFavorite = true;
        favoriteProducts.add(product);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('${product.title} a été ajouté aux favoris'),
            duration: const Duration(seconds: 2),
          ),
        );
      }
    });
  }

  //Pour la gestion des produits ce trouvant dans la liste des favoris
  void _onProductTap(Product product) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailPage(product: product),
      ),
    );
  }

  void _onContainerTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<dynamic> productCategories = [
    ProduitList(),
  ];

  @override
  Widget build(BuildContext context) {
    final filteredProducts =
        productCategories[_selectedIndex].getProducts().where((product) {
      final titleMatch =
          product.title.toLowerCase().contains(searchQuery.toLowerCase());
      final priceMatch =
          product.prix.toLowerCase().contains(searchQuery.toLowerCase());
      return titleMatch || priceMatch;
    }).toList();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Colors.white, // Couleur de fond du conteneur
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Couleur de l'ombre
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: const Offset(
                          0, 2), // Changement de position de l'ombre
                    ),
                  ],
                  borderRadius:
                      BorderRadius.circular(8.0), // Coins arrondis du conteneur
                ),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      searchQuery = value;
                    });
                  },
                  decoration: const InputDecoration(
                    icon: Icon(Icons.search),
                    border:
                        InputBorder.none, // Supprime la bordure du TextField
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.0), // Espacement interne du TextField
                    labelText: 'Recherche',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16.0),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount:
                            MediaQuery.of(context).size.width > 600 ? 3 : 2,
                        crossAxisSpacing: 16.0,
                        mainAxisSpacing: 16.0,
                        childAspectRatio:
                            0.72, // Ajustez le rapport hauteur/largeur selon vos besoins
                      ),
                      itemCount: filteredProducts.length,
                      itemBuilder: (context, idx) {
                        final product = filteredProducts[idx];
                        return GestureDetector(
                          onTap: () => _onProductTap(product),
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  product.image,
                                  width: double.infinity,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(height: 8.0),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          product.title,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: SizeClasse.size12,
                                          ),
                                        ),
                                        const SizedBox(
                                            height: SizeClasse.size10),
                                        Text(
                                          product.description,
                                          style: const TextStyle(
                                              fontSize: SizeClasse.size8),
                                        ),
                                        const SizedBox(
                                            height: SizeClasse.size10),
                                        Text(
                                          "${product.prix} FCFA",
                                          style: const TextStyle(
                                              fontSize: SizeClasse.size8),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        IconButton(
                                            icon: Icon(
                                              product.isFavorite == true
                                                  ? Icons.favorite
                                                  : Icons.favorite_border,
                                              color: ColorsPers.colorRed,
                                            ),
                                            onPressed: () {
                                              _onFavoriteTap(product);
                                            }),
                                        IconButton(
                                            onPressed: () {
                                              _onAddToCart(product);
                                            },
                                            icon: const Icon(
                                                Icons.shopping_cart_rounded))
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
