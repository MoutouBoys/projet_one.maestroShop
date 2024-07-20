import 'package:flutter/material.dart';
import 'package:maestroshop/model/produit.dart';
import 'package:maestroshop/utils/colors_pers.dart';
import 'package:maestroshop/utils/reseaux_sociaux.dart';
import 'package:maestroshop/utils/size_classe.dart'; // Assurez-vous d'importer correctement votre modèle de produit

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: .5,
                      blurRadius: 35,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(SizeClasse.size24),
                    bottomRight: Radius.circular(SizeClasse.size24),
                  ),
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height:
                        350, // Vous pouvez ajuster la hauteur selon vos besoins
                  ),
                ),
              ),
              Positioned(
                top: 16.0,
                left: 16.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorsPers.colorWhite,
                    borderRadius: BorderRadius.circular(SizeClasse.size50),
                  ),
                  child: IconButton(
                    icon:
                        Icon(Icons.arrow_back_ios, color: ColorsPers.colorBlue),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Positioned(
                top: 16.0,
                right: 16.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorsPers.colorWhite,
                    borderRadius: BorderRadius.circular(SizeClasse.size50),
                  ),
                  child: IconButton(
                    icon: Icon(
                      product.isFavorite
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      // Logique pour gérer l'ajout ou la suppression des favoris
                    },
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      product.title,
                      style: const TextStyle(
                        fontSize: SizeClasse.size18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      product.description,
                      style: const TextStyle(
                        fontSize: SizeClasse.size15,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Prix: ${product.prix} FCFA', // Ajoutez ici l'affichage du prix selon votre modèle de données
                  style: TextStyle(
                    fontSize: SizeClasse.size15,
                    color: ColorsPers.colorRed,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: SizeClasse.size20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Suivez-nous sur les réseaux sociaux pour discuter directement avec notre boutiquier !', // Ajoutez ici l'affichage du prix selon votre modèle de données
              style: TextStyle(
                fontSize: SizeClasse.size15,
                color: ColorsPers.colorBlackClai,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: SizeClasse.size15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Cliquez sur l'un de ces quatre liens pour démarrer une conversation avec le vendeur de ces vêtements tendance !", // Ajoutez ici l'affichage du prix selon votre modèle de données,
              style: TextStyle(
                fontSize: SizeClasse.size15,
                color: ColorsPers.colorBlackClai,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: SizeClasse.size35,
          ),
          SocialMediaIcons()
        ],
      ),
    );
  }
}
