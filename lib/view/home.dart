import 'package:flutter/material.dart';
import 'package:maestroshop/utils/colors_pers.dart';
import 'package:maestroshop/view/accueil_page.dart';
import 'package:maestroshop/view/achat_page.dart';
import 'package:maestroshop/view/produit_page.dart';
import 'package:maestroshop/view/profil_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // Liste des pages à afficher dans le corps de l'application
  final List<Widget> _pages = [
    AccueilPage(),
    ProduitPage(),
    AchatPage(),
    ProfilPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MaestroShop'),
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.grid_view_outlined)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.checkroom_rounded),
            label: 'Produit',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart_rounded),
            label: 'Achat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ColorsPers.colorBlueClair,
        unselectedItemColor: ColorsPers.colorBlackClai,
        onTap: _onItemTapped,
      ),
    );
  }
}
