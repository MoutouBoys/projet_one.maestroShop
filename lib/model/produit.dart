// Modèle de classe pour représenter un produit
class Product {
  final String id;
  final String title;
  final String description;
  final String image;
  final String prix;
  bool isFavorite;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.prix,
    this.isFavorite = false,
  });

  // Assurez-vous d'avoir une méthode fromJson et toJson pour votre modèle de produit si nécessaire

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Product && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}

//Information pourla page produit
// Classe représentant la catégorie "Tous"
class ProduitList {
  List<Product> getProducts() {
    // Simulation de données, remplacer par les données réelles
    return [
      // Vêtements Tissus
      Product(
          id: "1",
          isFavorite: false,
          image: 'asset/images/img1.jpg',
          title: 'Produit 1',
          description: 'Description du produit 1',
          prix: '2200'),
      Product(
          id: "2",
          isFavorite: false,
          image: 'asset/images/img2.jpg',
          title: 'Produit 2',
          description: 'Description du produit 2',
          prix: '2500'),
      Product(
          id: "3",
          isFavorite: false,
          image: 'asset/images/img3.jpg',
          title: 'Produit 3',
          description: 'Description du produit 3',
          prix: '1200'),
      Product(
          id: "4",
          isFavorite: false,
          image: 'asset/images/img4.jpg',
          title: 'Produit 2',
          description: 'Description du produit 2',
          prix: '2000'),
      Product(
          id: "5",
          isFavorite: false,
          image: 'asset/images/img5.jpg',
          title: 'Produit 3',
          description: 'Description du produit 3',
          prix: '2300'),
      // Vêtements Homme
      Product(
          id: "6",
          isFavorite: false,
          image: 'asset/images/jean1.jpg',
          title: 'Produit 1',
          description: 'Description du produit 1',
          prix: '2250'),
      Product(
          id: "7",
          isFavorite: false,
          image: 'asset/images/jean2.jpg',
          title: 'Produit 2',
          description: 'Description du produit 2',
          prix: '2300'),
      Product(
          id: "8",
          isFavorite: false,
          image: 'asset/images/jean3.jpg',
          title: 'Produit 3',
          description: 'Description du produit 3',
          prix: '8200'),
      Product(
          id: "9",
          isFavorite: false,
          image: 'asset/images/jean4.jpg',
          title: 'Produit 2',
          description: 'Description du produit 2',
          prix: '7200'),
      // Vêtements enfants
      Product(
          id: "10",
          isFavorite: false,
          image: 'asset/images/en1.jpg',
          title: 'Produit 1',
          description: 'Description du produit 1',
          prix: '2700'),
      Product(
          id: "11",
          isFavorite: false,
          image: 'asset/images/en2.jpg',
          title: 'Produit 2',
          description: 'Description du produit 2',
          prix: '9200'),
      Product(
          id: "2",
          isFavorite: false,
          image: 'asset/images/en3.jpg',
          title: 'Produit 3',
          description: 'Description du produit 3',
          prix: '9000'),
      Product(
          id: "13",
          isFavorite: false,
          image: 'asset/images/en4.jpg',
          title: 'Produit 2',
          description: 'Description du produit 2',
          prix: '1000'),
      // Vêtements Femmes
      Product(
          id: "14",
          isFavorite: false,
          image: 'asset/images/fem1.jpg',
          title: 'Produit 1',
          description: 'Description du produit 1',
          prix: '6000'),
      Product(
          id: "15",
          isFavorite: false,
          image: 'asset/images/fem2.jpg',
          title: 'Produit 2',
          description: 'Description du produit 2',
          prix: '5000'),
      Product(
          id: "16",
          isFavorite: false,
          image: 'asset/images/fem3.jpg',
          title: 'Produit 3',
          description: 'Description du produit 3',
          prix: '3000'),
      Product(
          id: "17",
          isFavorite: false,
          image: 'asset/images/fem4.jpg',
          title: 'Produit 2',
          description: 'Description du produit 2',
          prix: '3000'),
      Product(
          id: "1",
          isFavorite: false,
          image: 'asset/images/img1.jpg',
          title: 'Produit 1',
          description: 'Description du produit 1',
          prix: '2200'),
    ];
  }
}

// Classe représentant la catégorie "Tous"
class ProduitTous {
  List<Product> getProducts() {
    // Simulation de données, remplacer par les données réelles
    return [
      // Vêtements Tissus
      Product(
          id: "1",
          isFavorite: false,
          image: 'asset/images/img1.jpg',
          title: 'Produit 1',
          description: 'Description du produit 1',
          prix: '2200'),
      Product(
          id: "2",
          isFavorite: false,
          image: 'asset/images/img2.jpg',
          title: 'Produit 2',
          description: 'Description du produit 2',
          prix: '2500'),
      Product(
          id: "3",
          isFavorite: false,
          image: 'asset/images/img3.jpg',
          title: 'Produit 3',
          description: 'Description du produit 3',
          prix: '1200'),
      Product(
          id: "4",
          isFavorite: false,
          image: 'asset/images/img4.jpg',
          title: 'Produit 2',
          description: 'Description du produit 2',
          prix: '2000'),
      Product(
          id: "5",
          isFavorite: false,
          image: 'asset/images/img5.jpg',
          title: 'Produit 3',
          description: 'Description du produit 3',
          prix: '2300'),
      // Vêtements Homme
      Product(
          id: "6",
          isFavorite: false,
          image: 'asset/images/jean1.jpg',
          title: 'Produit 1',
          description: 'Description du produit 1',
          prix: '2250'),
      Product(
          id: "7",
          isFavorite: false,
          image: 'asset/images/jean2.jpg',
          title: 'Produit 2',
          description: 'Description du produit 2',
          prix: '2300'),
      Product(
          id: "8",
          isFavorite: false,
          image: 'asset/images/jean3.jpg',
          title: 'Produit 3',
          description: 'Description du produit 3',
          prix: '8200'),
      Product(
          id: "9",
          isFavorite: false,
          image: 'asset/images/jean4.jpg',
          title: 'Produit 2',
          description: 'Description du produit 2',
          prix: '7200'),
      // Vêtements enfants
      Product(
          id: "10",
          isFavorite: false,
          image: 'asset/images/en1.jpg',
          title: 'Produit 1',
          description: 'Description du produit 1',
          prix: '2700'),
      Product(
          id: "11",
          isFavorite: false,
          image: 'asset/images/en2.jpg',
          title: 'Produit 2',
          description: 'Description du produit 2',
          prix: '9200'),
      Product(
          id: "2",
          isFavorite: false,
          image: 'asset/images/en3.jpg',
          title: 'Produit 3',
          description: 'Description du produit 3',
          prix: '9000'),
      Product(
          id: "13",
          isFavorite: false,
          image: 'asset/images/en4.jpg',
          title: 'Produit 2',
          description: 'Description du produit 2',
          prix: '1000'),
      // Vêtements Femmes
      Product(
          id: "14",
          isFavorite: false,
          image: 'asset/images/fem1.jpg',
          title: 'Produit 1',
          description: 'Description du produit 1',
          prix: '6000'),
      Product(
          id: "15",
          isFavorite: false,
          image: 'asset/images/fem2.jpg',
          title: 'Produit 2',
          description: 'Description du produit 2',
          prix: '5000'),
      Product(
          id: "16",
          isFavorite: false,
          image: 'asset/images/fem3.jpg',
          title: 'Produit 3',
          description: 'Description du produit 3',
          prix: '3000'),
      Product(
          id: "17",
          isFavorite: false,
          image: 'asset/images/fem4.jpg',
          title: 'Produit 2',
          description: 'Description du produit 2',
          prix: '3000'),
    ];
  }
}

// Classe représentant la catégorie "Homme"
class ProduitHomme {
  List<Product> getProducts() {
    // Simulation de données, remplacer par les données réelles
    return [
      // Vêtements Hommes
      Product(
          id: "1",
          isFavorite: false,
          image: 'asset/images/img1.jpg',
          title: 'Produit 1',
          description: 'Description du produit 1',
          prix: '10000'),
      Product(
          id: "2",
          isFavorite: false,
          image: 'asset/images/img2.jpg',
          title: 'Produit 2',
          description: 'Description du produit 2',
          prix: '7000'),
      Product(
          id: "3",
          isFavorite: false,
          image: 'asset/images/img3.jpg',
          title: 'Produit 3',
          description: 'Description du produit 3',
          prix: '5000'),
      Product(
          id: "4",
          isFavorite: false,
          image: 'asset/images/img4.jpg',
          title: 'Produit 2',
          description: 'Description du produit 2',
          prix: '11000'),
      Product(
          id: "5",
          isFavorite: false,
          image: 'asset/images/img5.jpg',
          title: 'Produit 3',
          description: 'Description du produit 3',
          prix: '2000'),
    ];
  }
}

// Classe représentant la catégorie "Homme"
class ProduitRecommander {
  List<Product> getProducts() {
    // Simulation de données, remplacer par les données réelles
    return [
      Product(
          id: "1",
          isFavorite: false,
          image: 'asset/images/fem3.jpg',
          title: 'Produit 3',
          description: 'Description du produit 3',
          prix: '2000'),
      Product(
          id: "2",
          isFavorite: false,
          image: 'asset/images/en2.jpg',
          title: 'Produit 2',
          description: 'Description du produit 2',
          prix: '6000'),
      Product(
          id: "3",
          isFavorite: false,
          image: 'asset/images/en3.jpg',
          title: 'Produit 3',
          description: 'Description du produit 3',
          prix: '1500'),
      Product(
          id: "4",
          isFavorite: false,
          image: 'asset/images/en4.jpg',
          title: 'Produit 2',
          description: 'Description du produit 2',
          prix: '2600'),
    ];
  }
}

// Classe représentant la catégorie "Homme"
class ProduitEnfants {
  List<Product> getProducts() {
    // Simulation de données, remplacer par les données réelles
    return [
      // Vêtements enfants
      Product(
          id: "1",
          isFavorite: false,
          image: 'asset/images/en1.jpg',
          title: 'Produit 1',
          description: 'Description du produit 1',
          prix: '2000'),
      Product(
          id: "2",
          isFavorite: false,
          image: 'asset/images/en2.jpg',
          title: 'Produit 2',
          description: 'Description du produit 2',
          prix: '7000'),
      Product(
          id: "3",
          isFavorite: false,
          image: 'asset/images/en3.jpg',
          title: 'Produit 3',
          description: 'Description du produit 3',
          prix: '5000'),
      Product(
          id: "4",
          isFavorite: false,
          image: 'asset/images/en4.jpg',
          title: 'Produit 2',
          description: 'Description du produit 2',
          prix: '9000'),
    ];
  }
}

// Classe représentant la catégorie "Homme"
class ProduitPopulaire {
  List<Product> getProducts() {
    // Simulation de données, remplacer par les données réelles
    return [
      Product(
          id: "5",
          isFavorite: false,
          image: 'asset/images/fem3.jpg',
          title: 'Produit 3',
          description: 'Description du produit 3',
          prix: '1200'),
      Product(
          id: "6",
          isFavorite: false,
          image: 'asset/images/en2.jpg',
          title: 'Produit 2',
          description: 'Description du produit 2',
          prix: '1000'),
      Product(
          id: "7",
          isFavorite: false,
          image: 'asset/images/en3.jpg',
          title: 'Produit 3',
          description: 'Description du produit 3',
          prix: '1800'),
      Product(
          id: "8",
          isFavorite: false,
          image: 'asset/images/en4.jpg',
          title: 'Produit 2',
          description: 'Description du produit 2',
          prix: '1800'),
    ];
  }
}

// Classe représentant la catégorie "Homme"
class ProduitFemme {
  List<Product> getProducts() {
    // Simulation de données, remplacer par les données réelles
    return [
      // Vêtements Femmes
      Product(
          id: "1",
          isFavorite: false,
          image: 'asset/images/fem1.jpg',
          title: 'Produit 1',
          description: 'Description du produit 1',
          prix: '1000'),
      Product(
          id: "2",
          isFavorite: false,
          image: 'asset/images/fem2.jpg',
          title: 'Produit 2',
          description: 'Description du produit 2',
          prix: '1900'),
      Product(
          id: "3",
          isFavorite: false,
          image: 'asset/images/fem3.jpg',
          title: 'Produit 3',
          description: 'Description du produit 3',
          prix: '16000'),
      Product(
          id: "4",
          isFavorite: false,
          image: 'asset/images/fem4.jpg',
          title: 'Produit 2',
          description: 'Description du produit 2',
          prix: '12000'),
    ];
  }
}

// Classe représentant la catégorie "Homme"
class ProduitRecent {
  List<Product> getProducts() {
    // Simulation de données, remplacer par les données réelles
    return [
      Product(
          id: "1",
          isFavorite: false,
          image: 'asset/images/fem2.jpg',
          title: 'Produit 2',
          description: 'Description du produit 2',
          prix: '12000'),
      Product(
          id: "2",
          isFavorite: false,
          image: 'asset/images/img3.jpg',
          title: 'Produit 3',
          description: 'Description du produit 3',
          prix: '20000'),
      Product(
          id: "3",
          isFavorite: false,
          image: 'asset/images/en2.jpg',
          title: 'Produit 2',
          description: 'Description du produit 2',
          prix: '9000'),
    ];
  }
}
// Ajouter d'autres classes similaires pour les autres catégories
