import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maestroshop/utils/colors_pers.dart';
import 'package:maestroshop/utils/size_classe.dart';

Widget containerSearch() {
  return Padding(
          padding: const EdgeInsets.all(SizeClasse.size16),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    color: Colors.white, // Couleur de fond du conteneur
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Couleur de l'ombre
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: const Offset(0, 2), // Changement de position de l'ombre
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8.0), // Coins arrondis du conteneur
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      border: InputBorder.none, // Supprime la bordure du TextField
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0), // Espacement interne du TextField
                      labelText: 'Recherche',
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: SizeClasse.size15,
              ),
              Container(
                padding: const EdgeInsets.all(SizeClasse.size12),
                decoration: BoxDecoration(
                  color: ColorsPers.colorBlue,
                  borderRadius: BorderRadius.circular(SizeClasse.size10)
                ),
                child: Icon(
                  color: ColorsPers.colorWhite,
                  Icons.tune_sharp
                ),
              )
            ],
          ),
    );
}

Widget containerPrincipale(String image1,String text1, String text2, String text3, String text4, String image2){
  return Padding(
    padding: const EdgeInsets.all(SizeClasse.size16),
    child: Container(
      padding: const EdgeInsets.all(SizeClasse.size10),
      decoration: BoxDecoration(
      color: ColorsPers.colorBlueCiel,
        borderRadius: BorderRadius.circular(SizeClasse.size20)
      ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(image1, fit: BoxFit.cover,
                width: 60,
                height: 40,),
                const SizedBox(height: 5),
                Text(text1, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: SizeClasse.size16,
                    color:ColorsPers.colorWhite
                  ),
                ),
                const SizedBox(height: 5),
                Text(text2, style: TextStyle(
                    fontSize: SizeClasse.size12,
                    color:ColorsPers.colorWhite
                  ),
                ),
                Text(text3, style: TextStyle(
                    fontSize: SizeClasse.size12,
                    color:ColorsPers.colorWhite
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text(text4, style: TextStyle(
                      fontSize: SizeClasse.size15,
                      color:ColorsPers.colorWhite
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: SizeClasse.size15,
                    color: ColorsPers.colorWhite,
                  )
                ],
                )
              ],
            ),
            Image.asset(image2, fit: BoxFit.cover,
              width: 100,
              height: 150,
            )
          ],
        )
    ),
  );
}